struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = vec4<bool>(((2147483647i & min(u_input.c.x, -57115i)) >> (116968u % 32u)) <= _wgslsmith_dot_vec3_i32(u_input.d, ~u_input.d), true, !any(!vec3<bool>(false, arg_0.d, false)), !(u_input.a >= _wgslsmith_clamp_u32(1u, ~61171u, ~4294967295u)));
    var_0 = select(!select(select(vec4<bool>(var_0.x, true, arg_2.x, var_0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(arg_0.c.b, var_0.x, var_0.x, arg_0.a.b), arg_0.d), vec4<bool>(var_0.x, false, arg_2.x, true)), !vec4<bool>(arg_2.x, var_0.x, arg_0.a.b, false), var_0.x & false), select(!(!vec4<bool>(arg_2.x, var_0.x, false, false)), select(vec4<bool>(arg_2.x, true, true, select(true, arg_0.b.b, true)), !select(vec4<bool>(arg_2.x, var_0.x, var_0.x, true), vec4<bool>(false, arg_0.a.b, false, arg_2.x), vec4<bool>(var_0.x, true, arg_0.b.b, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, arg_2.x))), vec4<bool>(!(arg_0.c.b & false), select(false, false, var_0.x) | var_0.x, all(!vec3<bool>(arg_2.x, var_0.x, false)), any(var_0.wyy))), !(!select(select(vec4<bool>(arg_0.d, false, var_0.x, false), vec4<bool>(arg_0.b.b, arg_2.x, true, true), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(false, arg_2.x, arg_2.x, false), false)));
    var_0 = select(select(vec4<bool>(all(vec4<bool>(arg_0.d, var_0.x, false, arg_0.d)) & true, arg_2.x, !arg_0.d, !any(var_0.wy)), select(vec4<bool>(select(true, true, arg_0.b.b), !var_0.x, true, arg_2.x), vec4<bool>(true, false, true, any(vec2<bool>(false, arg_2.x))), arg_0.c.b), select(select(select(vec4<bool>(arg_2.x, false, var_0.x, false), vec4<bool>(arg_0.a.b, var_0.x, var_0.x, true), true), vec4<bool>(arg_2.x, true, false, false), true), !vec4<bool>(var_0.x, var_0.x, arg_0.b.b, false), any(select(arg_2, vec2<bool>(arg_2.x, arg_0.b.b), vec2<bool>(var_0.x, arg_0.b.b))))), vec4<bool>(all(select(var_0.zwz, select(var_0.wxy, vec3<bool>(false, true, var_0.x), arg_2.x), select(var_0.wzy, vec3<bool>(false, true, true), var_0.x))), !((arg_0.c.a.x ^ arg_0.a.a.x) > ~u_input.a), -1i <= _wgslsmith_mult_i32(-76033i, reverseBits(u_input.b)), (arg_2.x & true) | true), select(vec4<bool>(false, var_0.x, -277f >= arg_1.x, arg_0.b.b), vec4<bool>(any(var_0.zz), any(vec4<bool>(arg_2.x, true, arg_0.c.b, arg_2.x)), arg_0.c.b, _wgslsmith_mult_u32(0u, 4294967295u) != u_input.a), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2.x, true, arg_0.d, arg_0.a.b), arg_0.c.b), vec4<bool>(false, arg_2.x, arg_0.b.b, false), vec4<bool>(false, true, arg_0.a.b, arg_2.x)), select(select(vec4<bool>(arg_0.d, arg_2.x, arg_2.x, false), vec4<bool>(arg_0.c.b, arg_0.b.b, var_0.x, arg_2.x), vec4<bool>(true, true, arg_0.c.b, var_0.x)), !vec4<bool>(false, true, true, arg_0.d), !vec4<bool>(true, arg_2.x, true, arg_2.x)), vec4<bool>(var_0.x, arg_0.c.b, false, !arg_0.a.b))));
    let var_1 = Struct_1(vec2<u32>(0u, _wgslsmith_div_u32(u_input.a, 49472u)), true);
    var var_2 = all(select(select(vec4<bool>(arg_2.x && true, u_input.c.x < -27733i, true, true), select(select(vec4<bool>(true, true, false, arg_0.a.b), vec4<bool>(false, var_1.b, var_0.x, false), var_1.b), vec4<bool>(var_0.x, false, arg_2.x, arg_2.x), arg_0.c.b), !(!vec4<bool>(false, false, arg_2.x, var_0.x))), !vec4<bool>(arg_2.x, all(vec4<bool>(var_1.b, true, arg_0.c.b, arg_2.x)), var_1.b, any(vec4<bool>(arg_0.b.b, arg_2.x, var_0.x, var_0.x))), !vec4<bool>(arg_0.b.b, !var_0.x, select(false, false, false), all(var_0.zy))));
    return ~4294967295u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = countOneBits(vec3<u32>(abs(_wgslsmith_div_u32(min(arg_1.a.a.x, arg_2.b.a.x), ~4294967295u)), ~func_3(Struct_3(Struct_1(vec2<u32>(arg_2.b.a.x, 1u), arg_2.a.x), Struct_1(vec2<u32>(23686u, arg_1.a.a.x), arg_2.b.b), Struct_1(arg_1.c.a, false), false), vec4<f32>(651f, 1000f, -323f, -1000f), arg_2.a.xx), _wgslsmith_dot_vec2_u32(vec2<u32>(28540u, 13844u), vec2<u32>(1u, arg_0.x)) ^ _wgslsmith_clamp_u32(arg_0.x, min(1u, u_input.a), _wgslsmith_mult_u32(u_input.a, 30372u))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-282f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(208f + -180f))))));
    var var_3 = arg_2.b.a.x;
    let var_4 = Struct_4(~_wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(u_input.d.x, -3789i)), 0u, u_input.d.x, !select((0u >= var_0.x) == true, !arg_1.c.b | (false & arg_2.a.x), false), 5991i);
    return arg_2.a;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = Struct_2(select(arg_2.xxz, !func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, u_input.a)), Struct_3(Struct_1(vec2<u32>(u_input.a, u_input.a), true), Struct_1(vec2<u32>(1u, u_input.a), true), Struct_1(vec2<u32>(1u, 1u), true), true), Struct_2(vec3<bool>(true, arg_2.x, true), Struct_1(vec2<u32>(u_input.a, 12455u), false))), vec3<bool>(!(!arg_2.x), true, true)), Struct_1(min(vec2<u32>(~u_input.a, max(u_input.a, u_input.a)), abs(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), true))), arg_2.x));
    let var_2 = arg_2.x;
    var_0 = ~_wgslsmith_mult_vec3_i32(-(~(vec3<i32>(-81916i, arg_0, 47060i) >> (vec3<u32>(68234u, u_input.a, 0u) % vec3<u32>(32u)))), vec3<i32>(reverseBits(~2824i), countOneBits(_wgslsmith_add_i32(var_0.x, arg_1)), abs(_wgslsmith_sub_i32(var_0.x, -2147483647i))));
    let var_3 = Struct_3(Struct_1(var_1.b.a, any(arg_2.yww)), Struct_1(~var_1.b.a, true), Struct_1(var_1.b.a, false), func_2(vec2<u32>(u_input.a, 1u), Struct_3(var_1.b, var_1.b, Struct_1(var_1.b.a, any(vec2<bool>(false, false))), arg_2.x & func_2(var_1.b.a, Struct_3(Struct_1(vec2<u32>(0u, 40386u), false), var_1.b, Struct_1(var_1.b.a, var_1.a.x), true), var_1).x), Struct_2(select(vec3<bool>(var_2, var_1.b.b, arg_2.x), !var_1.a, select(arg_2.xwy, vec3<bool>(true, arg_2.x, false), var_2)), Struct_1(~vec2<u32>(0u, 8298u), true))).x);
    return Struct_1(vec2<u32>(81227u, 22650u), arg_2.x);
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(_wgslsmith_clamp_i32(-((u_input.d.x ^ u_input.d.x) ^ -25515i), -(~2147483647i) >> (_wgslsmith_mult_u32(u_input.a ^ u_input.a, u_input.a) % 32u), -(~u_input.d.x | u_input.b)), _wgslsmith_sub_i32(abs(-29836i), -firstTrailingBit(-1i)), vec4<bool>(true, false, any(!func_2(vec2<u32>(u_input.a, u_input.a), Struct_3(Struct_1(vec2<u32>(4294967295u, 83874u), true), Struct_1(vec2<u32>(0u, 0u), false), Struct_1(vec2<u32>(68111u, u_input.a), false), false), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<u32>(u_input.a, u_input.a), true)))), any(func_2(vec2<u32>(4294967295u, 31419u), Struct_3(Struct_1(vec2<u32>(u_input.a, 66165u), true), Struct_1(vec2<u32>(0u, 69848u), true), Struct_1(vec2<u32>(0u, u_input.a), true), true), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<u32>(1u, u_input.a), false))).yz)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1499f - _wgslsmith_f_op_f32(floor(-1451f))))));
    let var_1 = Struct_2(vec3<bool>(var_0.b, -817f <= _wgslsmith_f_op_f32(sign(-619f)), !var_0.b), Struct_1(vec2<u32>(14276u, u_input.a), any(!select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(true, var_0.b, true, var_0.b)))));
    return Struct_3(Struct_1(vec2<u32>(10343u, u_input.a), true), func_4(u_input.d.x, i32(-1i) * -2147483647i, vec4<bool>(!(!var_0.b), !var_0.b, all(func_2(var_1.b.a, Struct_3(var_0, Struct_1(var_1.b.a, true), var_0, var_1.b.b), var_1).yy), func_4(select(u_input.d.x, 9577i, var_0.b), 21964i, !vec4<bool>(false, true, var_0.b, var_0.b), _wgslsmith_div_f32(643f, -836f)).b), -1903f), func_4(-3431i, reverseBits(-2147483647i) << (_wgslsmith_sub_u32(u_input.a, var_0.a.x) % 32u), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.b, false, true, var_0.b), vec4<bool>(var_0.b, true, var_1.a.x, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -2051f, true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-564f, 616f), -1071f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1178f))), ~u_input.c, firstLeadingBit(abs(~firstLeadingBit(vec4<u32>(var_1.a.a.x, 93626u, u_input.a, var_1.a.a.x)))), u_input.c, ~vec2<i32>(~_wgslsmith_mod_i32(2147483647i, 2147483647i), 1i));
}

