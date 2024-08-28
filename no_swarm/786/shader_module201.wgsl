struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30>;

var<private> global1: vec4<i32> = vec4<i32>(35526i, 1i, -1i, 30236i);

var<private> global2: f32;

var<private> global3: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(Struct_1(vec4<f32>(-1135f, -799f, -1000f, -943f), vec3<f32>(-457f, 440f, -111f), 4294967295u, vec4<f32>(-459f, -1026f, 1185f, -1019f)))), Struct_3(Struct_2(Struct_1(vec4<f32>(-331f, 969f, 921f, 852f), vec3<f32>(1000f, -1000f, 560f), 1u, vec4<f32>(734f, 395f, 236f, -1096f)))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(453f, 649f))))));
    var var_1 = arg_0.a;
    global1 = abs(select(~vec4<i32>(-1i, -26095i, 3828i, global1.x), vec4<i32>(-2147483647i, 35130i, 1i, 0i), vec4<bool>(false, true, false, true)) ^ ~(-vec4<i32>(u_input.b, u_input.b, -1i, global1.x))) << (max(global0[_wgslsmith_index_u32(1u, 30u)] ^ ~(~global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(20965u, 30u)]) % vec4<u32>(32u));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a.d), _wgslsmith_f_op_vec4_f32(var_1.a.a - arg_0.a.a.d), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))))), _wgslsmith_div_vec4_f32(arg_0.a.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.d))))), var_1.a.a);
    var var_3 = Struct_2(Struct_1(vec4<f32>(var_1.a.a.x, 303f, -405f, arg_0.a.a.b.x), var_1.a.b, var_1.a.c, _wgslsmith_f_op_vec4_f32(round(arg_0.a.a.d))));
    return vec2<bool>(false, !any(vec2<bool>(global1.x >= -2147483647i, true)));
}

fn func_2() -> Struct_4 {
    var var_0 = !(!(!select(vec2<bool>(true, true), func_3(Struct_3(Struct_2(Struct_1(vec4<f32>(-248f, -1378f, 400f, 1324f), vec3<f32>(-678f, 1559f, -634f), 0u, vec4<f32>(1206f, -909f, -1507f, -584f))))), vec2<bool>(false, false))));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1078f, 763f, 803f, -1122f), vec4<f32>(-781f, 1617f, -388f, 334f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(323f, -523f, -1020f, 2236f) * vec4<f32>(1400f, 566f, -110f, -433f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, -357f, 1917f) * vec3<f32>(1020f, 1047f, -1222f)))), 0u ^ _wgslsmith_add_u32(u_input.c, 0u), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(173f, 618f) - vec2<f32>(-204f, 269f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 1568f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = ~_wgslsmith_dot_vec4_u32(~(~global0[_wgslsmith_index_u32(4294967295u, 30u)]) ^ global0[_wgslsmith_index_u32(~u_input.a.x, 30u)], vec4<u32>(~4294967295u, arg_0, u_input.a.x, ~(arg_0 & u_input.a.x)));
    var_0 = ~global1.x;
    let var_2 = select(~global1.x, u_input.b & ~_wgslsmith_clamp_i32(min(1i, global1.x), 1i | global1.x, global1.x), true);
    var_0 = -35851i;
    return arg_1.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = !(true & ((i32(-1i) * -arg_0) >= (global1.x ^ -2147483647i)));
    let var_1 = !(!any(vec4<bool>(true, var_0, !var_0, all(vec2<bool>(true, var_0)))));
    var var_2 = ~vec4<i32>(~1i, -39578i ^ u_input.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(reverseBits(global1.ywy)), global1.yxy), max(0i, 19596i));
    let var_3 = Struct_3(func_4(u_input.a.x, func_2()));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a.a.d.x)))))) - -1719f);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(-1i));
    let var_1 = var_0.a;
    global1 = vec4<i32>(-(~1i), global1.x, u_input.b, global1.x);
    global3 = array<Struct_3, 2>();
    let var_2 = func_4(func_1(u_input.b >> (~u_input.c % 32u)).a.c, Struct_4(func_2().a, var_0.a.d.zy)).a;
    global2 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.a.c, ~var_2.c, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], vec4<u32>(var_2.c, var_0.a.c, 42078u, 0u)), global0[_wgslsmith_index_u32(~var_2.c, 30u)]), abs(~(~u_input.a.x))), reverseBits(-1i), _wgslsmith_sub_i32(global1.x ^ (global1.x & ~u_input.b), global1.x));
}

