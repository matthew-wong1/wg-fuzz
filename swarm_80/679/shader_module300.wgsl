struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: i32 = -12075i;

var<private> global3: Struct_2;

var<private> global4: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = !(!global1.b.c.e.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(671f * _wgslsmith_f_op_f32(global1.b.b * 1000f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-151f))))))));
    global2 = 81797i;
    var var_2 = global3.c.e;
    var var_3 = global1.b.c.a | _wgslsmith_div_i32(23719i, global1.a);
    return 876f;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = u_input.b < global3.c.a;
    let var_1 = global3.c.a;
    var var_2 = -(~countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -13448i), vec2<i32>(1i, -12045i)))) ^ global1.d;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-559f, _wgslsmith_f_op_f32(func_3())))) < 221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(-arg_1.x)))), arg_2);
    var_2 = select(global1.d, max(global1.d, global1.d), !(!var_3.a));
    return countOneBits(firstLeadingBit(global1.d));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    return Struct_2((min(_wgslsmith_dot_vec4_i32(vec4<i32>(35563i, u_input.b, 9724i, arg_1.a), vec4<i32>(u_input.b, arg_0, arg_0, 10929i)), arg_0) > ~28479i) && any(!(!vec3<bool>(false, global3.a, true))), _wgslsmith_div_f32(188f, 1044f), Struct_1(_wgslsmith_div_i32(25837i | ~arg_0, abs(arg_1.a)), -952f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-369f))) + 403f), ~vec4<u32>(global3.c.d.x, global3.c.d.x, global1.c.x, 11138u) >> (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.c.d.x, 1u, 57722u, global3.c.d.x), vec4<u32>(52663u, 49098u, u_input.a.x, 25892u), vec4<u32>(global1.c.x, global3.c.d.x, 47260u, 9317u))) % vec4<u32>(32u)), vec2<bool>(true, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    global4 = array<vec4<bool>, 3>();
    var var_0 = func_4(arg_2, Struct_3(-global1.d.x, global1.b, (~vec4<u32>(global3.c.d.x, 8957u, arg_0.x, arg_0.x) ^ select(global1.b.c.d, arg_0, true)) << (~global3.c.d % vec4<u32>(32u)), func_2(arg_1.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b.c.b, -1000f, 1714f, -1000f))))), Struct_1(~(-39051i), global3.c.c, _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_mult_vec4_u32(vec4<u32>(17906u, 371u, 1u, 1u), global3.c.d), global3.c.e))));
    global0 = all(select(vec3<bool>(!(true || global3.c.e.x), !global1.b.a, true), !select(arg_1.wzy, arg_1.yyw, !arg_1.xxz), ~global1.c.x < func_4(0i, Struct_3(u_input.b, Struct_2(true, -865f, Struct_1(global3.c.a, global3.c.c, arg_3.x, var_0.c.d, global1.b.c.e)), global1.c, vec2<i32>(-21506i, global1.b.c.a))).c.d.x));
    let var_1 = -firstTrailingBit(-(~0i));
    global1 = Struct_3(-reverseBits(var_1), global1.b, func_4(-67089i, Struct_3(-16742i, func_4(13065i, Struct_3(global3.c.a, global1.b, arg_0, global1.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.c.d.x, global3.c.d.x, 58156u), vec4<u32>(48364u, 1936u, 1u, 27481u)), global1.d)).c.d << (vec4<u32>(~firstTrailingBit(var_0.c.d.x), min(reverseBits(5552u), 0u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.c.d.x, u_input.a.x), u_input.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.d.x, global1.c.x, 1093u, global3.c.d.x), var_0.c.d)) % vec4<u32>(32u)), vec2<i32>(-var_1, ~_wgslsmith_clamp_i32(2147483647i, global1.b.c.a, -2147483647i) ^ global3.c.a));
    return func_4(-countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.c.a, -2147483647i), ~(-1i))), Struct_3(_wgslsmith_mult_i32(func_4(~(-61138i), Struct_3(var_0.c.a, global1.b, var_0.c.d, global1.d)).c.a, 1i), Struct_2(true, func_4(~(-2147483647i), Struct_3(arg_2, Struct_2(global1.b.c.e.x, -160f, Struct_1(var_0.c.a, -112f, 1439f, vec4<u32>(29044u, 4294967295u, 0u, arg_0.x), var_0.c.e)), vec4<u32>(4294967295u, 8780u, u_input.a.x, 22025u), global1.d)).c.c, var_0.c), var_0.c.d, ~_wgslsmith_sub_vec2_i32(global1.d, global1.d)));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = arg_3.c.b;
    var var_1 = 1i;
    var var_2 = !vec2<bool>(!global1.b.c.e.x, any(func_4(reverseBits(u_input.b), Struct_3(arg_1.b.c.a, Struct_2(false, global1.b.b, global1.b.c), vec4<u32>(1u, u_input.a.x, global3.c.d.x, u_input.a.x), vec2<i32>(arg_3.c.a, global1.d.x))).c.e));
    var var_3 = global1.d;
    var var_4 = Struct_3(1i, func_4(arg_1.b.c.a, Struct_3(select(global3.c.a, global3.c.a, false), Struct_2(var_2.x, _wgslsmith_f_op_f32(global1.b.b - -1029f), arg_1.b.c), ~vec4<u32>(u_input.a.x, 6224u, arg_1.b.c.d.x, global1.c.x), arg_1.d)), arg_3.c.d, arg_1.d);
    return max(_wgslsmith_div_vec2_i32(~arg_1.d, abs(func_2(var_2.x, vec4<f32>(-700f, arg_3.c.b, arg_2, global1.b.b), arg_1.b.c))), vec2<i32>(-16480i, arg_3.c.a)) ^ _wgslsmith_sub_vec2_i32(arg_1.d, select(abs(-global1.d), countOneBits(global1.d), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), _wgslsmith_sub_vec2_i32(global1.d, vec2<i32>(global1.a, -24513i))), global1.d)), global1.b, firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 2348u, 45587u, global1.b.c.d.x), vec4<u32>(u_input.a.x, 53278u, 4294967295u, global1.c.x)) | _wgslsmith_mult_vec4_u32(global1.c, vec4<u32>(global3.c.d.x, global3.c.d.x, global1.c.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, global3.c.d.x, 1u) | vec4<u32>(global3.c.d.x, 1u, 4294967295u, 1u))), _wgslsmith_sub_vec2_i32(func_5(1058f, Struct_3(26833i ^ global1.b.c.a, Struct_2(true, global3.b, Struct_1(global3.c.a, global1.b.c.b, -630f, vec4<u32>(1u, 4294967295u, global3.c.d.x, global3.c.d.x), global1.b.c.e)), ~global1.c, vec2<i32>(2147483647i, global1.a) ^ global1.d), _wgslsmith_f_op_f32(f32(-1f) * -172f), func_1(~global1.c, select(global4[_wgslsmith_index_u32(21481u, 3u)], vec4<bool>(global3.c.e.x, true, global3.a, false), vec4<bool>(global1.b.c.e.x, global3.c.e.x, global1.b.c.e.x, global3.a)), 16512i, _wgslsmith_f_op_vec4_f32(vec4<f32>(766f, -783f, 747f, global3.c.b) - vec4<f32>(global3.c.b, global3.c.b, global3.c.c, global1.b.c.c)))), ~abs(vec2<i32>(global1.a, global3.c.a) << (vec2<u32>(111387u, global1.c.x) % vec2<u32>(32u)))));
    var var_0 = !(global1.b.c.d.x < _wgslsmith_add_u32(reverseBits(abs(u_input.a.x)), ~abs(22313u)));
    var var_1 = Struct_2(_wgslsmith_div_i32(48533i, ~u_input.b) >= min(global1.b.c.a, -85i), _wgslsmith_f_op_f32(f32(-1f) * -159f), global3.c);
    var var_2 = Struct_3(-u_input.b, func_1(~max(global1.c, global1.b.c.d) ^ vec4<u32>(global1.b.c.d.x << (36403u % 32u), 1u, 1u, 9931u), global4[_wgslsmith_index_u32(0u & u_input.a.x, 3u)], _wgslsmith_mod_i32(~(~global3.c.a), func_1(global1.c, !global4[_wgslsmith_index_u32(4294967295u, 3u)], global3.c.a >> (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.c.b, var_1.b, global1.b.b, global3.b)))).c.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1227f, var_1.b, 959f, -1184f)))) - vec4<f32>(global3.b, _wgslsmith_f_op_f32(sign(1329f)), _wgslsmith_f_op_f32(-global1.b.c.c), var_1.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.d.x & global3.c.d.x, _wgslsmith_mult_u32(4294967295u, ~global1.b.c.d.x), max(u_input.a.x << (global3.c.d.x % 32u), ~var_1.c.d.x), 1u), vec4<u32>(25353u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u), vec4<u32>(global1.b.c.d.x, var_1.c.d.x, 1u, global3.c.d.x)), 0u, 4294967295u)), global1.d);
    global3 = func_1(global3.c.d, vec4<bool>(func_4((i32(-1i) * -15004i) ^ max(u_input.b, global1.b.c.a), Struct_3(_wgslsmith_mult_i32(-2147483647i, global3.c.a), var_2.b, global1.c ^ global3.c.d, global1.d)).c.e.x, false, (true | !var_2.b.a) | (-1600i > var_2.b.c.a), true), _wgslsmith_mod_i32(countOneBits(-2147483647i), -58840i), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.b)) + -316f), global1.b.b), _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.c.c)), _wgslsmith_f_op_f32(max(var_2.b.b, var_2.b.b)))), global3.c.e.x != all(vec4<bool>(false, global3.c.e.x, true, true))))));
    global2 = global1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(21071u, -(~u_input.b), ~(~var_2.a), -(min(~vec2<i32>(global3.c.a, 1i), ~vec2<i32>(u_input.b, 13833i)) | ~global1.d));
}

