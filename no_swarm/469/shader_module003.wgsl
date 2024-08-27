struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 410u;

var<private> global2: array<f32, 3> = array<f32, 3>(281f, 1000f, 1491f);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(-309f, 2094f), false), Struct_1(vec2<f32>(-1000f, -1000f), false), Struct_1(vec2<f32>(264f, 2074f), false), Struct_1(vec2<f32>(-806f, -305f), true), Struct_1(vec2<f32>(-381f, -245f), false), Struct_1(vec2<f32>(1928f, -2951f), true), Struct_1(vec2<f32>(397f, -131f), true), Struct_1(vec2<f32>(777f, -568f), true), Struct_1(vec2<f32>(-1487f, -1016f), true), Struct_1(vec2<f32>(1219f, 102f), false), Struct_1(vec2<f32>(-565f, 1000f), false), Struct_1(vec2<f32>(768f, -650f), false), Struct_1(vec2<f32>(-1197f, -1000f), false), Struct_1(vec2<f32>(1094f, 1000f), true), Struct_1(vec2<f32>(673f, 579f), true), Struct_1(vec2<f32>(1081f, 1562f), true), Struct_1(vec2<f32>(1000f, -1128f), false), Struct_1(vec2<f32>(773f, -157f), false), Struct_1(vec2<f32>(670f, -858f), true), Struct_1(vec2<f32>(-778f, 226f), true), Struct_1(vec2<f32>(1000f, 789f), false), Struct_1(vec2<f32>(-894f, 648f), true), Struct_1(vec2<f32>(2214f, 223f), true), Struct_1(vec2<f32>(-2382f, 537f), false), Struct_1(vec2<f32>(240f, 365f), false), Struct_1(vec2<f32>(-1410f, 895f), false), Struct_1(vec2<f32>(228f, 442f), false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = firstLeadingBit(0u);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f + -1265f) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5131u, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1540f)) + -474f))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_div_f32(2176f, 190f), _wgslsmith_f_op_f32(f32(-1f) * -1330f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(257f, -230f, arg_1) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(797f, arg_1, arg_0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(25526u, 3u)], var_0.x, arg_0.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1366f, var_0.x) + vec3<f32>(global2[_wgslsmith_index_u32(7714u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, global2[_wgslsmith_index_u32(u_input.a, 3u)], 461f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0.x, -111f), vec3<f32>(-556f, var_0.x, arg_1))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(1056f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 8632u), 3u)], _wgslsmith_f_op_f32(var_0.x + arg_1))))))), _wgslsmith_f_op_f32(abs(126f)), -850f);
    let var_1 = !vec4<bool>(true, all(vec4<bool>(false, true, global0.x, false)) | any(global0.yz), arg_0.b, true);
    return 51881u;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = u_input.d.x;
    global3 = array<Struct_1, 27>();
    var var_1 = var_0;
    let var_2 = ~countOneBits(~select(vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x) ^ vec4<i32>(var_0, var_0, u_input.d.x, 10383i), all(vec3<bool>(global0.x, arg_2.b, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_0, 3u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))), -878f, _wgslsmith_f_op_f32(-arg_2.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2[_wgslsmith_index_u32(1141u, 3u)], -1195f, 658f)))));
    return arg_2.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: f32) -> vec3<f32> {
    let var_0 = arg_2;
    let var_1 = all(!global0.yz);
    var var_2 = var_0;
    global3 = array<Struct_1, 27>();
    var_2 = arg_2;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b), u_input.b), 3u)]))), -1990f, _wgslsmith_f_op_f32(func_4(firstLeadingBit(func_3(arg_0, _wgslsmith_f_op_f32(sign(arg_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(392f, -2233f, arg_3))), arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c << (arg_1 % 32u), _wgslsmith_mod_u32(68512u, u_input.c), arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(7337u, 0u), u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1, u_input.c, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(7483u, 0u, u_input.a, arg_1), vec4<u32>(u_input.a, u_input.c, 0u, 4294967295u)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(23970u, u_input.a, 19533u), vec3<u32>(1u, 30678u, 62641u))), 3u)], global2[_wgslsmith_index_u32(1u, 3u)]))));
    global2 = array<f32, 3>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1076f)), _wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(ceil(var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-221f, 1876f, global2[_wgslsmith_index_u32(arg_0.x, 3u)]), vec3<f32>(-1623f, global2[_wgslsmith_index_u32(42422u, 3u)], -549f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0.x, 3u)], var_0, var_0) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global3[_wgslsmith_index_u32(~arg_0.x, 27u)], ~4294967295u, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1339f, global2[_wgslsmith_index_u32(arg_0.x, 3u)], 750f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, global2[_wgslsmith_index_u32(123098u, 3u)], var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, global2[_wgslsmith_index_u32(33776u, 3u)], -1002f)))))));
    global1 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1265f, -2953f)))), !(!global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(~(~u_input.c), vec3<f32>(var_1.x, _wgslsmith_div_f32(638f, 1305f), _wgslsmith_f_op_f32(1000f + 490f)), global3[_wgslsmith_index_u32(select(arg_0.x, ~17873u, any(global0.zy)), 27u)], min(vec4<u32>(u_input.c, 24556u, u_input.c, u_input.a), abs(vec4<u32>(arg_0.x, u_input.a, u_input.a, u_input.a))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1000f) + 983f)))));
    var var_2 = Struct_1(var_1.yx, global0.x);
    return global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(firstLeadingBit(~u_input.b.x), 1u, _wgslsmith_sub_u32(u_input.a << ((0u | u_input.b.x) % 32u), arg_0.x))), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 27>();
    let var_0 = func_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.c), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 4292u)) & u_input.b.x, ~76664u), ~u_input.d.x);
    var var_1 = select(firstTrailingBit(-(~1i)), 0i, var_0.b);
    let var_2 = func_1(u_input.b, -46488i);
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(1191f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_3.a.x)))));
    var var_5 = vec4<bool>(true, var_3.b, true, true);
    var var_6 = vec3<f32>(func_1(_wgslsmith_clamp_vec2_u32(u_input.b >> (u_input.b % vec2<u32>(32u)), abs(u_input.b), u_input.b), 2147483647i).a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(318f - 1f))), -645f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(23463u, u_input.a, u_input.b.x), vec3<u32>(firstTrailingBit(u_input.b.x), 9724u, 22750u)) | ~(~vec3<u32>(0u, u_input.c, 0u)), _wgslsmith_mult_vec2_i32(-reverseBits(u_input.d) << (u_input.b % vec2<u32>(32u)), vec2<i32>(u_input.d.x, u_input.d.x)));
}

