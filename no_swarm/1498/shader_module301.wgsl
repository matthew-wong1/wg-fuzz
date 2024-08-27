struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 26>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(-382f));

var<private> global3: i32 = -1i;

var<private> global4: Struct_1 = Struct_1(-193f, vec4<f32>(-1078f, 1387f, 592f, 113f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = any(select(vec4<bool>(arg_0, true, false | arg_1.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(arg_1), arg_0, true, true), select(select(vec4<bool>(arg_1.x, arg_0, arg_0, false), vec4<bool>(arg_0, arg_1.x, arg_0, arg_1.x), vec4<bool>(false, true, false, arg_1.x)), !vec4<bool>(false, true, false, arg_0), true)), arg_0));
    global3 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-global4.b);
    let var_2 = vec4<u32>(1u, 1u, 1u, 1u);
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(~1u, var_2.x), var_2.x), 1u)];
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(184f, global4.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * global4.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1735f, 442f, 1000f) + vec4<f32>(-1743f, var_3.a, arg_2, var_1.x))), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-205f, 155f, var_3.a, 1908f), var_1, false)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global2 = array<Struct_4, 1>();
    global4 = arg_3;
    var var_0 = !vec2<bool>(arg_1.x, !arg_0.x);
    var var_1 = 293f;
    global1 = array<Struct_3, 26>();
    return i32(-1i) * -23253i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> u32 {
    global4 = Struct_1(arg_3.a, global4.b);
    global3 = arg_1;
    global1 = array<Struct_3, 26>();
    var var_0 = ~(51372u | ~firstTrailingBit(1u));
    global3 = 14642i;
    return 0u;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_2(arg_0, global4.b.xzw, arg_1.e, -1028f > arg_1.d, vec4<bool>(arg_1.a.e.x, false, any(!vec4<bool>(false, arg_2.x, arg_2.x, true)), any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.b.x)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) + _wgslsmith_f_op_f32(floor(692f))))));
    var_0 = Struct_2(~(~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.c.b.xxx, vec3<f32>(arg_1.a.c.a, global4.b.x, var_1.x), arg_1.b.e.x)))), global4.b.xzx)), Struct_1(var_0.b.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(global4.b))))))), (false | select(false, any(vec3<bool>(var_0.e.x, arg_1.b.e.x, arg_1.a.d)), var_0.e.x)) | (var_1.x >= -455f), select(vec4<bool>(arg_1.a.d, all(var_0.e), !any(arg_2), !all(arg_2.xyx)), vec4<bool>(var_0.e.x, true, (u_input.b >= -22692i) && true, true), all(arg_1.a.e)));
    global4 = Struct_1(992f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_1.e.b), _wgslsmith_f_op_vec4_f32(global4.b + vec4<f32>(-782f, var_0.b.x, var_0.b.x, -798f)))))) * vec4<f32>(func_2(true, !vec3<bool>(arg_2.x, true, arg_1.b.e.x), _wgslsmith_f_op_f32(889f + -596f), var_0.c).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-481f, arg_1.e.a)), global4.b.x, -1441f)));
    global4 = func_2(false & arg_2.x, vec3<bool>(any(!var_0.e.yw), true, !(true & any(var_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -104f))), arg_1.e);
    return Struct_4(var_0.c.b.x);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<u32>(1u, 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.a, _wgslsmith_f_op_f32(1000f + 1031f), func_5(6153u, global1[_wgslsmith_index_u32(var_0.x, 26u)], vec4<bool>(true, true, false, true)).a), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-310f)))), _wgslsmith_f_op_f32(-1662f + -1442f), 1645f)));
    let var_2 = vec3<i32>(~abs(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_add_i32(arg_1, 17909i), -1i)), reverseBits(-arg_1), _wgslsmith_add_i32((i32(-1i) * -arg_1) | 1i, arg_3));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(846f, arg_0.a, 2434f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(780f, arg_0.a, _wgslsmith_f_op_f32(trunc(-615f))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, arg_2, -308f), vec3<f32>(220f, global4.a, 1070f)))) * _wgslsmith_f_op_vec3_f32(-global4.b.yzx));
    var var_3 = ~(-arg_1) | (-(-u_input.a.x ^ _wgslsmith_mod_i32(-1i, -2147483647i)) ^ -(-2147483647i << (var_0.x % 32u)));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, -1011f)) + func_2(false, vec3<bool>(false, false, true), -752f, Struct_1(848f, global4.b)).b.x)))), global4.b);
}

fn func_1() -> Struct_2 {
    global4 = func_6(func_5(func_4(func_3(vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), func_2(true, vec3<bool>(false, false, false), 437f, Struct_1(1572f, vec4<f32>(global4.b.x, 496f, 1667f, global4.a)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(43762i, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, 1i, -1i)), all(vec3<bool>(true, true, true)), global2[_wgslsmith_index_u32(55792u, 1u)]), global1[_wgslsmith_index_u32(12639u, 26u)], vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))), ~(u_input.a.x | u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(129f)) * global4.b.x), all(vec3<bool>(true, true, true)))), reverseBits(-_wgslsmith_mod_i32(-31121i, u_input.a.x)) | firstLeadingBit(u_input.b));
    var var_0 = global4.b.wwy;
    global2 = array<Struct_4, 1>();
    let var_1 = ~min(~_wgslsmith_mult_u32(~20003u, ~4294967295u), 1u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(62212u, 4337u, 23818u), vec3<u32>(0u, 1u, 35337u)));
    global2 = array<Struct_4, 1>();
    return Struct_2(countOneBits(4294967295u), global4.b.yyz, func_6(Struct_4(-710f), 1i, func_2(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x - 508f)), Struct_1(_wgslsmith_div_f32(896f, var_0.x), _wgslsmith_div_vec4_f32(global4.b, global4.b))).a, max(-u_input.a.x, countOneBits(u_input.a.x)) >> (~func_4(u_input.a.x, 46338i, true, Struct_4(-1306f)) % 32u)), any(vec2<bool>(true, true)) & all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true))), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true, u_input.a.x >= u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = -(u_input.b & -38321i);
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.x - _wgslsmith_f_op_f32(-arg_1.b.x))), global4.b);
    return reverseBits(~(firstLeadingBit(vec2<u32>(68675u, arg_1.a)) << (_wgslsmith_add_vec2_u32(vec2<u32>(79360u, arg_1.a), vec2<u32>(arg_1.a, arg_1.a)) % vec2<u32>(32u))) ^ countOneBits(min(~vec2<u32>(4294967295u, arg_1.a), ~vec2<u32>(arg_1.a, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec2<u32>(1u, 1u)) | firstTrailingBit(_wgslsmith_sub_vec2_u32(func_7(vec2<bool>(true, true), func_1()), countOneBits(abs(vec2<u32>(4294967295u, 0u)))));
    let var_1 = func_5(var_0.x, Struct_3(Struct_2(var_0.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.b.x, global4.a, global4.b.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.b.x, -1440f, -384f), vec3<f32>(-1037f, global4.b.x, -426f))))), Struct_1(global4.b.x, global4.b), var_0.x >= ~75148u, vec4<bool>(true, true, true, global4.a >= global4.b.x)), Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 64782u), vec3<u32>(var_0.x, 23272u, 1u)), global4.b.yzw, Struct_1(_wgslsmith_f_op_f32(round(608f)), vec4<f32>(global4.a, 125f, -1503f, -1000f)), select(u_input.b, u_input.a.x, false) <= (u_input.a.x ^ 43222i), vec4<bool>(all(vec4<bool>(false, true, true, false)), false, any(vec3<bool>(false, true, false)), u_input.a.x <= u_input.b)), _wgslsmith_add_u32(reverseBits(46957u) << (var_0.x % 32u), firstTrailingBit(4294967295u)), global4.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + -1831f) - _wgslsmith_f_op_f32(round(global4.a))), vec4<f32>(global4.b.x, -296f, _wgslsmith_f_op_f32(global4.a * global4.b.x), 164f))), vec4<bool>(var_0.x != 21051u, false, true && select(true, select(false, true, true), var_0.x >= var_0.x), !any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(-19305i, 44507i >> (var_0.x % 32u))) & abs(u_input.a.x));
}

