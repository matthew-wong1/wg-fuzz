struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: vec4<f32> = vec4<f32>(1189f, -664f, -1166f, 194f);

var<private> global2: vec2<f32> = vec2<f32>(924f, -491f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), global1.x) * vec2<f32>(_wgslsmith_div_f32(1406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(105f)))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-190f, -983f))))));
    var var_0 = Struct_3(arg_3, Struct_2(arg_3, arg_1.b, arg_2.d, Struct_1(select(!vec2<bool>(arg_0.a.x, arg_2.d.a.x), vec2<bool>(true, false), all(vec4<bool>(false, false, false, false)))), arg_1.e), Struct_1(select(!vec2<bool>(false, arg_2.c.a.x), select(vec2<bool>(arg_3.a.x, false), select(arg_3.a, arg_0.a, arg_3.a), true), true)), Struct_2(Struct_1(arg_0.a), arg_1.b, arg_3, arg_1.c, 1u), !all(!vec3<bool>(arg_1.d.a.x, true, arg_0.a.x)));
    var var_1 = ~((arg_2.b.x | (-55564i | (u_input.b & var_0.d.b.x))) | -1i);
    let var_2 = global2.x;
    var_1 = -11806i;
    return -483f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> f32 {
    global0 = array<Struct_4, 14>();
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~arg_1.a.b.e, ~1u, _wgslsmith_mod_u32(1u, arg_1.a.b.e)), _wgslsmith_sub_vec3_u32(u_input.a.xzy, vec3<u32>(~arg_2.a.d.e, _wgslsmith_sub_u32(arg_1.a.b.e, 22713u), ~arg_2.a.b.e ^ 1u)));
    var var_1 = arg_2.a.b;
    var var_2 = Struct_3(var_1.c, Struct_2(var_1.a, ~(arg_1.a.d.b | vec3<i32>(-10886i, 21955i, 43352i)) ^ (-arg_2.a.d.b ^ vec3<i32>(arg_1.a.b.b.x, -2147483647i, 2638i)), arg_2.a.a, var_1.d, var_1.e), arg_2.a.c, arg_2.a.b, var_1.b.x >= 1i);
    var var_3 = arg_2.a.d;
    return 1393f;
}

fn func_2() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(~(u_input.a.wyz & vec3<u32>(33697u, 42572u, u_input.d)), u_input.a.zwz)), 14u)];
    let var_1 = u_input.b;
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, _wgslsmith_f_op_f32(floor(578f))));
    global1 = vec4<f32>(-1341f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_4(vec4<f32>(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.x, 684f)), _wgslsmith_f_op_f32(global2.x + -2038f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(min(var_0.b, -1114f))), 1000f), global0[_wgslsmith_index_u32(32884u, 14u)], Struct_4(Struct_3(var_0.a.c, Struct_2(var_0.a.d.d, vec3<i32>(var_0.a.b.b.x, 24400i, 22998i), Struct_1(var_0.a.b.a.a), Struct_1(var_0.a.a.a), var_0.a.b.e), Struct_1(var_0.a.c.a), Struct_2(Struct_1(var_0.a.d.d.a), var_0.a.d.b, Struct_1(vec2<bool>(var_0.a.d.c.a.x, var_0.a.c.a.x)), Struct_1(var_0.a.c.a), u_input.d), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, -275f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a.a.a), var_0.a.b, var_0.a.d, var_0.a.c))))), -709f);
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 2270f));
    return ~u_input.d;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec3<u32>(u_input.d, arg_0.e, _wgslsmith_mod_u32(func_2(), 4294967295u));
    global0 = array<Struct_4, 14>();
    var var_1 = ~u_input.a.xy;
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, 469f, -1603f)))))), arg_1));
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_1), arg_1))));
    return Struct_3(arg_2.a.b.a, Struct_2(Struct_1(select(vec2<bool>(true, arg_3.a.x), !vec2<bool>(false, arg_2.a.a.a.x), true)), vec3<i32>(u_input.c.x | _wgslsmith_mod_i32(-1i, -9587i), 1i, -(arg_0.b.x | 17598i)), arg_0.c, arg_0.d, ~reverseBits(firstTrailingBit(4294967295u))), Struct_1(!arg_3.a), Struct_2(Struct_1(vec2<bool>(false, true)), (arg_2.a.d.b << (u_input.a.zxx % vec3<u32>(32u))) ^ select(-arg_2.a.d.b, _wgslsmith_div_vec3_i32(vec3<i32>(-2296i, 0i, u_input.c.x), arg_2.a.b.b), all(vec4<bool>(false, arg_0.d.a.x, arg_2.a.b.d.a.x, arg_3.a.x))), Struct_1(arg_0.a.a), Struct_1(select(arg_3.a, arg_0.d.a, all(vec2<bool>(false, false)))), var_1.x ^ ~_wgslsmith_mult_u32(arg_0.e, var_0.x)), all(!(!select(arg_0.a.a, arg_3.a, arg_0.c.a))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = i32(-1i) * -arg_1.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(-424f)), 334f)) - vec4<f32>(-1720f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) + global1.x), 135f));
    let var_2 = any(vec4<bool>(true, false, select(arg_2.x, any(arg_2.wyy) | true, all(select(arg_2, arg_2, false))), false));
    var var_3 = select(~(~vec4<i32>(~u_input.c.x, abs(arg_1.b.x), -1i, reverseBits(0i))), ~max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.b.b.x, -2147483647i, -2147483647i, arg_1.b.x), vec4<i32>(-32489i, 361i, -1i, -2147483647i)) & select(vec4<i32>(arg_1.b.x, 7969i, arg_0.a.b.b.x, 26111i), vec4<i32>(-41557i, arg_1.b.x, arg_1.b.x, u_input.c.x), true), ~firstLeadingBit(vec4<i32>(15567i, 1i, -25359i, 32662i))), true);
    var var_4 = ~((max(countOneBits(vec4<u32>(arg_1.e, arg_0.a.d.e, 103762u, 48268u)), vec4<u32>(29153u, 85019u, 11836u, u_input.d)) & u_input.a) | vec4<u32>(~1u, arg_0.a.b.e, _wgslsmith_sub_u32(1u, firstTrailingBit(9508u)), u_input.a.x));
    return Struct_1(!(!vec2<bool>(any(vec2<bool>(true, false)), var_2)));
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(arg_2.a.x, !(arg_2.a.x && arg_2.a.x))), u_input.c, arg_2, func_5(global0[_wgslsmith_index_u32(u_input.d, 14u)], Struct_2(func_5(Struct_4(Struct_3(arg_2, Struct_2(Struct_1(arg_2.a), vec3<i32>(u_input.b, arg_1, u_input.b), arg_2, arg_2, 40208u), arg_2, Struct_2(Struct_1(vec2<bool>(true, false)), u_input.c, arg_2, arg_2, u_input.d), arg_2.a.x), 2019f), Struct_2(arg_2, vec3<i32>(arg_0.x, u_input.c.x, -11468i), arg_2, arg_2, u_input.d), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x)), (u_input.c ^ u_input.c) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-26931i, -7557i, -13127i), u_input.c), arg_2, Struct_1(vec2<bool>(false, true)), u_input.a.x), !(!select(vec4<bool>(arg_2.a.x, true, false, arg_2.a.x), vec4<bool>(false, false, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x)))), u_input.a.x);
    var var_1 = global0[_wgslsmith_index_u32(var_0.e, 14u)];
    global0 = array<Struct_4, 14>();
    let var_2 = var_1.a.b.e;
    var var_3 = any(select(!vec4<bool>(global2.x == -891f, true, all(vec2<bool>(var_0.a.a.x, true)), var_1.a.b.d.a.x), select(select(vec4<bool>(var_1.a.c.a.x, arg_2.a.x, true, var_0.d.a.x), !vec4<bool>(var_0.a.a.x, arg_2.a.x, var_0.d.a.x, arg_2.a.x), !vec4<bool>(arg_2.a.x, arg_2.a.x, var_1.a.b.a.a.x, false)), select(vec4<bool>(var_0.a.a.x, false, false, var_0.c.a.x), select(vec4<bool>(var_0.c.a.x, arg_2.a.x, var_1.a.c.a.x, false), vec4<bool>(false, arg_2.a.x, false, false), vec4<bool>(var_0.c.a.x, true, arg_2.a.x, var_1.a.a.a.x)), !arg_2.a.x), true | (var_0.a.a.x & var_1.a.a.a.x)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.d.a.x, true, false, var_0.c.a.x), vec4<bool>(arg_2.a.x, false, var_0.c.a.x, var_1.a.b.d.a.x)), vec4<bool>(var_0.d.a.x, var_0.a.a.x, var_0.d.a.x, var_1.a.a.a.x), global2.x < -919f)));
    return _wgslsmith_f_op_f32(select(global2.x, -1340f, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 21918u;
    let var_1 = 1u;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(func_6(u_input.c.xx, u_input.b, func_5(Struct_4(func_1(Struct_2(Struct_1(vec2<bool>(true, false)), vec3<i32>(u_input.b, 31693i, u_input.c.x), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), 1u), vec4<f32>(1235f, -418f, -1150f, 684f), global0[_wgslsmith_index_u32(1130u, 14u)], Struct_1(vec2<bool>(true, true))), -537f), func_1(Struct_2(Struct_1(vec2<bool>(true, false)), u_input.c, Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), 1u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2039f, -457f, -1463f, global2.x), vec4<f32>(1989f, -334f, global1.x, global2.x), true)), global0[_wgslsmith_index_u32(0u, 14u)], Struct_1(vec2<bool>(false, false))).b, select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))))), 436f);
    let var_2 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(trunc(global1.x)));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - -454f), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)))), 670f);
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(Struct_2(func_5(global0[_wgslsmith_index_u32(var_0, 14u)], Struct_2(Struct_1(vec2<bool>(true, true)), u_input.c, Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), 19887u), vec4<bool>(true, true, true, false)), vec3<i32>(1i, u_input.b, u_input.c.x), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), var_0), vec4<f32>(_wgslsmith_f_op_f32(round(294f)), _wgslsmith_f_op_f32(-global2.x), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -425f)), Struct_4(func_1(Struct_2(Struct_1(vec2<bool>(true, true)), vec3<i32>(-1i, u_input.c.x, u_input.b), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), var_1), vec4<f32>(var_2, -158f, global1.x, var_2), Struct_4(Struct_3(Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(false, false)), u_input.c, Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), var_1), Struct_1(vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(false, true)), vec3<i32>(60650i, 2147483647i, 1i), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), var_1), true), var_2), Struct_1(vec2<bool>(false, false))), -223f), func_1(Struct_2(Struct_1(vec2<bool>(true, true)), vec3<i32>(1i, u_input.c.x, u_input.c.x), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), 40199u), vec4<f32>(797f, -1000f, 1324f, -1026f), Struct_4(Struct_3(Struct_1(vec2<bool>(true, false)), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<i32>(-47751i, 0i, u_input.b), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), var_0), Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(true, false)), u_input.c, Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), var_1), false), global2.x), func_5(global0[_wgslsmith_index_u32(var_0, 14u)], Struct_2(Struct_1(vec2<bool>(false, true)), vec3<i32>(u_input.b, u_input.c.x, 2147483647i), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), 30042u), vec4<bool>(false, false, true, false))).a).d.b, u_input.c.yx, -784f, vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, 26363u), var_0, _wgslsmith_mult_u32(var_0, 0u) ^ 4294967295u) & vec3<u32>(1u, u_input.d, countOneBits(abs(9411u))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2, -749f), 1000f));
}

