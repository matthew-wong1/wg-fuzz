struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(445f, -575f, 1000f), vec3<f32>(-407f, 941f, -134f), vec3<f32>(-932f, -1466f, -1962f), vec3<f32>(207f, 808f, -1706f), vec3<f32>(-1291f, -1435f, 219f), vec3<f32>(939f, -860f, 1737f), vec3<f32>(723f, -371f, -378f), vec3<f32>(-155f, 121f, -1376f), vec3<f32>(-1000f, -1000f, 1977f), vec3<f32>(588f, 210f, 1000f), vec3<f32>(1000f, 109f, -1000f), vec3<f32>(-670f, -2134f, -1539f), vec3<f32>(-2282f, -282f, -156f), vec3<f32>(-1230f, -627f, -1113f), vec3<f32>(-1000f, -355f, -886f), vec3<f32>(-1250f, 2259f, 773f), vec3<f32>(-158f, -1364f, 1585f), vec3<f32>(-253f, -356f, -788f), vec3<f32>(-198f, -1452f, -988f), vec3<f32>(-1419f, 789f, -365f), vec3<f32>(1042f, 1716f, 184f), vec3<f32>(310f, -131f, -675f));

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<f32>(-478f, 1179f, 1769f), vec2<i32>(0i, 1i), 1266f, 15574i), vec3<bool>(false, true, true), vec3<u32>(17719u, 4294967295u, 4294967295u), Struct_2(-4033i, 43608u), 1u);

var<private> global2: f32;

var<private> global3: f32 = -1830f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    var var_0 = !vec2<bool>(true, global1.b.x);
    var_0 = select(global1.b.zz, !(!(!global1.b.xz)), global1.b.xz);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1513f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c) + global1.a.c)) - global1.a.c) + global1.a.a.x);
    var var_1 = global1.a;
    var var_2 = Struct_2(abs(17251i), 3622u);
    return ~firstTrailingBit(vec4<i32>(abs(var_1.d), var_1.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.d.a, var_2.a, -49643i, var_2.a), vec4<i32>(2405i, global1.d.a, global1.d.a, var_1.b.x)), ~(-29679i)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_2(~global1.a.d, 23371u));
    let var_1 = func_3();
    global0 = array<vec3<f32>, 22>();
    global2 = global1.a.a.x;
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(749f + _wgslsmith_f_op_f32(ceil(-2792f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-979f)), 588f))), !all(vec3<bool>(global1.b.x != global1.b.x, all(vec2<bool>(false, false)), all(vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x))))));
    return Struct_4(global1.a, global1.b, vec3<u32>(~global1.e, 0u, 1u), Struct_2(_wgslsmith_mult_i32(global1.a.b.x, -(0i >> (var_0.a.b % 32u))), ~(~1u)), 2897u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_i32(global1.a.b, vec2<i32>(global1.a.b.x, global1.d.a));
    let var_1 = func_2();
    let var_2 = Struct_3(var_1.d);
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    return Struct_2(abs(var_0.x), countOneBits(u_input.a));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(select(arg_1.a.x, -489f, global1.b.x));
    let var_0 = vec4<i32>(-37402i, select(-_wgslsmith_sub_i32(global1.a.d, arg_1.d), abs(func_1(global1.c, arg_2.a.a.xz, arg_1.a.x).a), any(select(vec4<bool>(global1.b.x, global1.b.x, arg_2.b.x, true), vec4<bool>(arg_2.b.x, arg_2.b.x, false, arg_2.b.x), vec4<bool>(global1.b.x, arg_2.b.x, global1.b.x, true)))) >> (44454u % 32u), 0i, -1i);
    var var_1 = Struct_4(arg_2.a, vec3<bool>(any(!vec3<bool>(false, false, arg_2.b.x)), true, !(arg_2.d.b >= u_input.a)), vec3<u32>(~arg_0, arg_2.d.b, 76678u) | func_2().c, Struct_2(arg_2.a.d, u_input.a), u_input.a);
    var var_2 = Struct_3(global1.d);
    var var_3 = Struct_3(Struct_2(-_wgslsmith_mod_i32(var_2.a.a, _wgslsmith_sub_i32(-1i, 0i)), ~(global1.e >> (~0u % 32u))));
    return Struct_4(var_1.a, select(select(!vec3<bool>(var_1.b.x, arg_2.b.x, false), select(!arg_2.b, vec3<bool>(false, true, true), select(vec3<bool>(arg_2.b.x, false, true), global1.b, var_1.b)), true), vec3<bool>(any(!vec4<bool>(arg_2.b.x, true, global1.b.x, true)), !(arg_2.b.x || global1.b.x), arg_2.b.x), !(!var_1.b.x)), vec3<u32>(15732u, var_1.d.b, global1.e), func_1(vec3<u32>(~(var_1.e | 1u), ~arg_2.d.b, 39373u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c, -442f)) - vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.a.x, 1140f, global1.b.x)), _wgslsmith_f_op_f32(select(global1.a.a.x, arg_1.c, arg_2.b.x)))), _wgslsmith_div_f32(2482f, arg_2.a.a.x)), 34145u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(873f - global1.a.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -306f))), -1212f));
    global1 = func_4(~4294967295u, global1.a, Struct_4(global1.a, global1.b, global1.c, func_1(vec3<u32>(global1.e, 50723u, ~global1.e), vec2<f32>(_wgslsmith_div_f32(-236f, global1.a.a.x), _wgslsmith_f_op_f32(round(global1.a.a.x))), 2291f), 0u));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.c))))))));
    var var_1 = Struct_4(global1.a, func_4(global1.d.b, func_2().a, func_2()).b, min(vec3<u32>(select(global1.d.b, func_1(vec3<u32>(1u, 4294967295u, u_input.a), vec2<f32>(-1014f, -964f), global1.a.a.x).b, global1.b.x), func_4(func_4(global1.d.b, global1.a, Struct_4(global1.a, vec3<bool>(global1.b.x, true, global1.b.x), vec3<u32>(1732u, u_input.a, u_input.a), Struct_2(global1.d.a, 63069u), global1.d.b)).e, func_2().a, func_2()).d.b, ~4294967295u), ~_wgslsmith_mult_vec3_u32(global1.c, global1.c)), Struct_2(countOneBits(~countOneBits(-2147483647i)), global1.e), ~(~global1.e) << (4294967295u % 32u));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~65184u)), u_input.a, var_1.a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, var_1.a.a.x)), -select(29580i, func_4(0u, var_1.a, Struct_4(Struct_1(vec3<f32>(var_3.x, 716f, 138f), vec2<i32>(var_1.a.d, -40493i), -703f, 69386i), vec3<bool>(true, true, false), vec3<u32>(u_input.a, 104139u, global1.d.b), Struct_2(26697i, global1.c.x), global1.e)).a.b.x, !var_1.b.x));
}

