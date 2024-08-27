struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-49454i, -8951i, -9481i, 5524i), vec4<i32>(-12688i, -9765i, i32(-2147483648), 49178i), vec4<i32>(-41962i, 2147483647i, 1i, 38442i), vec4<i32>(0i, 39554i, 0i, 0i), vec4<i32>(35474i, 2091i, 1i, i32(-2147483648)), vec4<i32>(-42417i, 1i, 2147483647i, -7199i), vec4<i32>(i32(-2147483648), 1i, 0i, 49093i), vec4<i32>(-1303i, -1i, -52922i, i32(-2147483648)), vec4<i32>(-24064i, 1i, 8783i, -1i), vec4<i32>(79730i, -1i, 0i, 7117i), vec4<i32>(2147483647i, -15495i, 1672i, -12898i), vec4<i32>(i32(-2147483648), 11823i, -46317i, 37188i), vec4<i32>(-13550i, 11227i, -10321i, -14702i), vec4<i32>(30087i, -1i, -25922i, -2668i), vec4<i32>(-1i, 1i, 2147483647i, -1i), vec4<i32>(-6971i, -38845i, 30605i, 32866i));

var<private> global1: i32 = -1i;

var<private> global2: Struct_2;

var<private> global3: u32 = 0u;

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<i32>, 16>();
    let var_0 = select(select(vec2<bool>(global2.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1768f) != _wgslsmith_f_op_f32(select(-747f, -646f, global2.c.b.x))), select(select(vec2<bool>(global2.c.b.x, false), !global2.c.b.zz, global2.a.b.zy), global2.c.b.xy, 92469u != (u_input.c.x | 21356u)), false), select(!select(global2.a.b.yz, select(vec2<bool>(global2.b.b.x, global2.b.b.x), global2.a.b.xy, global2.b.b.x), all(vec2<bool>(global2.c.b.x, global2.b.b.x))), select(vec2<bool>(true, true), global2.a.b.xz, vec2<bool>(-664f < global2.c.e.x, false & global2.c.b.x)), vec2<bool>(global2.a.b.x, !select(global2.b.b.x, true, global2.c.b.x))), true);
    global3 = 4294967295u;
    let var_1 = firstTrailingBit(u_input.a.wyz);
    var var_2 = 0i ^ (abs(-1i) << (~global2.b.a.x % 32u));
    return Struct_1(vec2<u32>(4294967295u, ~u_input.e.x), !vec3<bool>(var_0.x, false && any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a.c)), abs(var_1), vec2<f32>(_wgslsmith_f_op_f32(-global2.c.e.x), 911f));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<i32>(~u_input.b, abs(~global2.b.d.x), min(0i, ~abs(arg_1.d.x)));
    return abs(0u) >> (arg_1.a.x % 32u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !func_1().b;
    global0 = array<vec4<i32>, 16>();
    global0 = array<vec4<i32>, 16>();
    global4 = array<Struct_2, 20>();
    let var_1 = arg_3;
    return Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(func_3(vec4<f32>(arg_3.c.x, -1591f, global2.a.e.x, -120f), global2.b), min(arg_1.b.a.x, 0u))), firstTrailingBit(4294967295u)), vec3<bool>(any(select(select(vec4<bool>(global2.b.b.x, false, arg_1.c.b.x, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, var_0.x, true)), vec4<bool>(true, arg_1.c.b.x, true, arg_1.b.b.x), 0u > arg_2)), var_0.x, !var_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-854f)), global2.a.c.x), _wgslsmith_div_f32(-1458f, var_1.c.x), arg_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b.e.x)) - arg_3.e.x))), arg_1.b.d, func_1().c.zw);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = firstTrailingBit(vec2<i32>(arg_0.a.d.x, _wgslsmith_mult_i32(firstTrailingBit(u_input.b), arg_0.b.d.x ^ u_input.d))) | (-global2.c.d.xx >> ((~select(vec2<u32>(0u, u_input.e.x), u_input.e.zw, vec2<bool>(false, true)) ^ ~firstTrailingBit(vec2<u32>(arg_0.c.a.x, arg_0.a.a.x))) % vec2<u32>(32u)));
    global3 = 19339u;
    var var_1 = ~46509u;
    let var_2 = u_input.a.xzz;
    global1 = _wgslsmith_clamp_i32(0i, -1i, -1i);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(Struct_2(func_2(vec2<u32>(global2.c.a.x, u_input.e.x) | vec2<u32>(u_input.e.x, 0u), Struct_2(Struct_1(vec2<u32>(74776u, 0u), global2.c.b, vec4<f32>(global2.c.e.x, global2.b.c.x, global2.b.e.x, global2.c.c.x), u_input.a.yzy, global2.b.c.zz), global2.a, Struct_1(global2.a.a, global2.b.b, vec4<f32>(global2.a.c.x, -228f, -699f, 338f), global2.c.d, global2.a.e)), ~global2.a.a.x, func_1()), Struct_1(_wgslsmith_add_vec2_u32(global2.c.a, vec2<u32>(u_input.e.x, global2.a.a.x)), !global2.b.b, global2.c.c, vec3<i32>(global2.a.d.x, global2.b.d.x, -2147483647i), global2.a.e), func_2(vec2<u32>(u_input.e.x, 0u), Struct_2(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec3<bool>(true, global2.c.b.x, true), global2.c.c, global2.b.d, global2.c.e), global2.b, Struct_1(u_input.e.yx, vec3<bool>(global2.c.b.x, global2.c.b.x, false), global2.c.c, vec3<i32>(global2.c.d.x, u_input.a.x, global2.b.d.x), vec2<f32>(1719f, -1579f))), global2.a.a.x, global2.b)), Struct_1(max(u_input.c.ww ^ vec2<u32>(1u, u_input.c.x), ~u_input.e.yz), vec3<bool>(true, true, global2.b.b.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1959f, global2.a.e.x, global2.b.e.x, global2.a.e.x))))), -(vec3<i32>(global2.c.d.x, 2147483647i, -21573i) >> (vec3<u32>(0u, global2.c.a.x, 11528u) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(-316f, -1000f), 1f)), global2.c.c.x, !vec4<bool>(global2.c.b.x, all(vec2<bool>(true, false)), false, any(vec3<bool>(true, true, global2.c.b.x)))), global2.b, Struct_1((global2.a.a & (global2.c.a | global2.a.a)) ^ select(global2.a.a, func_2(global2.c.a, Struct_2(global2.c, global2.a, global2.c), 20012u, Struct_1(vec2<u32>(u_input.c.x, 1u), global2.a.b, global2.b.c, global2.c.d, global2.b.c.zy)).a, global2.b.b.x), vec3<bool>(global2.c.c.x <= func_1().e.x, true, any(vec4<bool>(true, global2.c.b.x, global2.a.b.x, true))), vec4<f32>(global2.b.e.x, global2.a.c.x, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global2.a.c.x, global2.c.c.x))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, func_2(vec2<u32>(20034u, 1u), Struct_2(Struct_1(vec2<u32>(103362u, 6315u), global2.a.b, global2.b.c, u_input.a.xzw, vec2<f32>(691f, global2.b.c.x)), global2.a, global2.a), global2.b.a.x, Struct_1(global2.a.a, vec3<bool>(global2.b.b.x, true, false), global2.a.c, global2.c.d, vec2<f32>(global2.b.e.x, global2.c.e.x))).d.x, 2147483647i), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global2.b.d.x), global2.a.d), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-30298i, 2147483647i, -5564i), global2.c.d))), global2.c.e));
    global3 = ~_wgslsmith_mod_u32(0u, global2.a.a.x);
    var var_1 = global2.c.e.x;
    let var_2 = func_1();
    let var_3 = !var_2.b.yx;
    let var_4 = Struct_1(_wgslsmith_clamp_vec2_u32(var_2.a, vec2<u32>(global2.b.a.x, u_input.c.x) | ~var_0.a.a, ~var_0.c.a) ^ ~vec2<u32>(1u, 1u), select(var_0.a.b, vec3<bool>((u_input.d <= 0i) && var_2.b.x, true, _wgslsmith_div_f32(global2.b.c.x, -1590f) <= -516f), var_3.x & var_3.x), var_0.a.c, select(vec3<i32>(~var_2.d.x, u_input.a.x, var_2.d.x), -var_2.d, false), _wgslsmith_f_op_vec2_f32(-var_0.c.c.wz));
    let var_5 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.a.a.x, func_2(var_4.a, Struct_2(Struct_1(vec2<u32>(22541u, 69861u), vec3<bool>(var_4.b.x, var_4.b.x, false), var_2.c, vec3<i32>(var_2.d.x, u_input.d, u_input.d), var_0.b.e), var_2, Struct_1(vec2<u32>(global2.b.a.x, 4294967295u), vec3<bool>(var_4.b.x, var_4.b.x, var_2.b.x), vec4<f32>(global2.c.c.x, 315f, -923f, -1000f), var_0.c.d, var_2.e)), var_2.a.x, var_0.b).a.x ^ var_4.a.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(var_2.a.x, var_4.a.x)) >> (global2.c.a.x % 32u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, 243f, 212f, 1192f) * vec4<f32>(var_2.e.x, 454f, -1288f, var_4.e.x)), var_0.a), 0u)) & ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(var_4.c.xyx))))), _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.d.x, -20470i, var_0.c.d.x), vec3<i32>(var_2.d.x, var_4.d.x, 25362i)), select(vec3<i32>(var_4.d.x, var_4.d.x, -1i), vec3<i32>(0i, var_2.d.x, 0i), var_0.a.b.x), func_4(global4[_wgslsmith_index_u32(21309u, 20u)], Struct_1(vec2<u32>(4294967295u, var_0.c.a.x), var_0.c.b, vec4<f32>(151f, -1074f, -795f, -654f), vec3<i32>(-1i, 0i, var_2.d.x), global2.c.e), 159f, vec4<bool>(var_2.b.x, false, var_0.c.b.x, var_0.b.b.x)).b), -(~var_2.d)) ^ 0i);
}

