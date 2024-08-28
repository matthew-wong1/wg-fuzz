struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-575f, false), Struct_1(311f, true), Struct_1(320f, false), Struct_1(-730f, true), Struct_1(1080f, true), Struct_1(318f, false), Struct_1(-400f, true), Struct_1(-740f, true), Struct_1(-937f, true), Struct_1(664f, false), Struct_1(651f, false), Struct_1(812f, false), Struct_1(-889f, false), Struct_1(-1131f, false), Struct_1(-130f, false), Struct_1(-1021f, true), Struct_1(-1026f, false), Struct_1(1039f, false), Struct_1(402f, true), Struct_1(185f, false), Struct_1(293f, false), Struct_1(-1787f, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    global0 = array<vec3<bool>, 26>();
    global1 = array<Struct_2, 27>();
    var var_0 = Struct_1(-1933f, arg_1);
    global1 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), -953f));
    return _wgslsmith_clamp_i32(firstTrailingBit(2147483647i) | -u_input.b, 28808i, ~(_wgslsmith_mult_i32(u_input.b, -1i) << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(63885u, u_input.a.x, u_input.a.x), firstTrailingBit(0u), select(40012u, 957u, false)) % 32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - 550f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-581f, _wgslsmith_f_op_f32(-1261f * -921f), -590f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, 300f, -182f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1220f, 1111f) + vec3<f32>(514f, -1129f, 1575f)), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-804f, -964f, -1125f), vec3<f32>(350f, 288f, 1162f)))))));
    global0 = array<vec3<bool>, 26>();
    var var_2 = var_1.yx;
    global1 = array<Struct_2, 27>();
    return ~arg_0.x | 23168u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 111u, firstLeadingBit(4294967295u)), reverseBits(~vec4<u32>(1u, u_input.a.x, 47579u, 1u)), vec4<u32>(~(~u_input.a.x), func_4(~vec2<u32>(u_input.a.x, u_input.a.x), !arg_2.x, func_3(vec2<f32>(arg_3.a, 2270f), var_0.b, vec2<f32>(arg_3.a, arg_0.a))), u_input.a.x, firstTrailingBit(~1u))));
    var var_2 = vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(6497u, u_input.a.x, abs(1u), ~0u), select(u_input.a, firstTrailingBit(u_input.a), vec4<bool>(true, arg_3.b, true, arg_2.x)))), _wgslsmith_dot_vec4_u32(u_input.a, reverseBits(select(u_input.a, vec4<u32>(u_input.a.x, 16413u, u_input.a.x, 0u), select(vec4<bool>(false, false, true, arg_3.b), vec4<bool>(false, true, var_0.b, false), true)))), max(~_wgslsmith_clamp_u32(1u, 0u, 49489u) << (u_input.a.x % 32u), countOneBits(~(21927u | u_input.a.x))), func_4(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.wx, u_input.a.yx), vec2<u32>(0u, u_input.a.x)), _wgslsmith_sub_u32(select(u_input.a.x, u_input.a.x, var_0.b), _wgslsmith_clamp_u32(22936u, 1u, u_input.a.x))), arg_3.b, firstLeadingBit(u_input.b)));
    let var_3 = abs(1294i & select(-2147483647i, 2147483647i << ((79998u ^ var_2.x) % 32u), var_0.b));
    global2 = array<Struct_1, 22>();
    return Struct_2(arg_0, _wgslsmith_f_op_f32(floor(arg_0.a)) >= arg_3.a, arg_0.a, !(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, var_0.b), vec4<bool>(false, true, var_0.b, arg_3.b)), select(vec4<bool>(true, false, true, arg_2.x), vec4<bool>(arg_3.b, true, true, false), vec4<bool>(true, var_0.b, true, var_0.b)), false)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    global2 = array<Struct_1, 22>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(step(-813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c)))))), all(vec2<bool>(false || (-2147483647i <= u_input.b), any(!arg_0.d))));
    return arg_0.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    return arg_2.d;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = -461f;
    let var_1 = u_input.a.x;
    global1 = array<Struct_2, 27>();
    var_0 = _wgslsmith_f_op_f32(round(arg_1.a.a));
    var var_2 = arg_0;
    return !func_6(Struct_2(func_5(func_2(Struct_1(arg_1.c, true), Struct_1(arg_1.a.a, var_2.d.x), vec3<bool>(var_2.b, arg_0.b, arg_1.b), Struct_1(-817f, true)), Struct_2(arg_1.a, false, -104f, var_2.d), ~u_input.a.x, u_input.a.xwy), !(!arg_1.a.b), var_2.c, !select(arg_0.d, vec4<bool>(true, false, false, true), vec4<bool>(var_2.d.x, arg_0.b, false, true))), var_2.a, func_2(func_5(func_2(Struct_1(-679f, false), global2[_wgslsmith_index_u32(u_input.a.x, 22u)], vec3<bool>(arg_1.a.b, true, false), arg_0.a), Struct_2(Struct_1(572f, true), false, arg_1.a.a, vec4<bool>(arg_2.x, arg_2.x, arg_0.a.b, arg_0.d.x)), _wgslsmith_mod_u32(1u, 50390u), u_input.a.xwz), Struct_1(_wgslsmith_f_op_f32(-409f * arg_1.c), all(vec3<bool>(false, arg_2.x, var_2.b))), vec3<bool>(any(var_2.d.zx), arg_2.x | var_2.d.x, true), var_2.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.c)), var_2.a.b), max(1u, 12135u) >= u_input.a.x, arg_1.a.a, arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 22u)], any(select(vec4<bool>(true, true, true, true), !func_1(global1[_wgslsmith_index_u32(4294967295u, 27u)], Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], false, -357f, vec4<bool>(false, false, false, true)), global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), !func_6(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_1(1053f, false), global1[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_2(Struct_1(547f, true), false, -384f, vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(195f, 1372f, true)))))), vec4<bool>(true, reverseBits(u_input.a.x) <= ~_wgslsmith_add_u32(1u, 1u), any(vec4<bool>(true, true, true, true)) && func_2(func_2(Struct_1(543f, true), global2[_wgslsmith_index_u32(0u, 22u)], vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(4294967295u, 22u)]).a, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(15305u, u_input.a.x), u_input.a.xx), 26u)], func_5(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 22u)], false, 3193f, vec4<bool>(false, false, true, false)), Struct_2(Struct_1(-1973f, true), true, 158f, vec4<bool>(true, false, false, true)), u_input.a.x, vec3<u32>(4294967295u, u_input.a.x, 4294967295u))).d.x, true));
    global1 = array<Struct_2, 27>();
    let var_1 = func_5(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], func_2(var_0.a, var_0.a, vec3<bool>(var_0.b, var_0.d.x, func_5(func_2(Struct_1(var_0.a.a, var_0.a.b), Struct_1(-1000f, false), vec3<bool>(var_0.b, var_0.b, true), Struct_1(973f, true)), Struct_2(Struct_1(var_0.c, var_0.d.x), false, var_0.a.a, var_0.d), ~u_input.a.x, vec3<u32>(u_input.a.x, 0u, u_input.a.x)).b), var_0.a), u_input.a.x, _wgslsmith_add_vec3_u32(~countOneBits(firstTrailingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x))), ~vec3<u32>(93730u, 0u, u_input.a.x)));
    let var_2 = vec2<bool>((~94i & countOneBits(_wgslsmith_mult_i32(-13384i, u_input.b))) <= 33613i, (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(47789u, 47858u) % vec2<u32>(32u)), ~vec2<i32>(u_input.b, u_input.b)) << (0u % 32u)) >= u_input.b);
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 27u)];
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), -593f)));
}

