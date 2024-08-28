struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 13184u, 4294967295u), -5845i, vec3<f32>(2154f, 1058f, 848f));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(44559u, 19028u, 1u), 2147483647i, vec3<f32>(-2100f, -357f, 664f)), vec2<bool>(true, true), vec3<u32>(48654u, 4294967295u, 1u));

var<private> global2: array<vec2<f32>, 16>;

var<private> global3: array<i32, 27> = array<i32, 27>(17878i, 67756i, -10669i, 2147483647i, 2147483647i, 37922i, i32(-2147483648), 0i, i32(-2147483648), -20689i, 2147483647i, -44929i, 1i, -1i, -1i, 9679i, 2147483647i, -1i, 1i, -36405i, 15739i, -17525i, -23398i, 49883i, 14632i, 19773i, 43752i);

var<private> global4: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, 30222i, -14333i, i32(-2147483648)), vec4<i32>(11085i, -25923i, 2147483647i, 1i), vec4<i32>(-1i, 2147483647i, -9966i, 2147483647i), vec4<i32>(-1i, 10378i, 0i, 3510i), vec4<i32>(1178i, -55925i, i32(-2147483648), i32(-2147483648)), vec4<i32>(9956i, 2197i, 35336i, -1i), vec4<i32>(2147483647i, 1i, 41094i, 35148i), vec4<i32>(-14532i, 36081i, -51663i, 36565i), vec4<i32>(-23837i, 35349i, -9680i, -19103i), vec4<i32>(542i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 1i, -1i, -1i), vec4<i32>(1i, -23565i, 0i, 40483i), vec4<i32>(36034i, -15808i, 2147483647i, 48000i), vec4<i32>(15290i, 0i, -56440i, 2147483647i), vec4<i32>(33701i, -10278i, -41167i, -13331i), vec4<i32>(2147483647i, 19722i, 15188i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -12765i), vec4<i32>(-1i, 2147483647i, 1i, -21516i), vec4<i32>(-39176i, 0i, 32814i, -50824i), vec4<i32>(46050i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-22641i, i32(-2147483648), 13584i, 32080i), vec4<i32>(-8335i, 2147483647i, 1i, 51400i), vec4<i32>(0i, 2147483647i, 2147483647i, 59787i), vec4<i32>(5654i, -28002i, -40614i, 1i), vec4<i32>(2147483647i, 0i, -1i, 18503i), vec4<i32>(i32(-2147483648), -8835i, 2147483647i, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    global2 = array<vec2<f32>, 16>();
    var var_0 = select(select(vec3<bool>(all(select(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_1.x, true), vec4<bool>(arg_1.x, global1.b.x, true, global1.b.x), vec4<bool>(false, false, true, arg_3.b.x))), any(arg_3.b), global1.b.x), select(select(vec3<bool>(true, true, true), !vec3<bool>(global1.b.x, false, arg_3.b.x), any(vec4<bool>(global1.b.x, true, true, global1.b.x))), select(arg_1, vec3<bool>(false, arg_1.x, true), true), false), select(select(select(arg_1, vec3<bool>(true, arg_1.x, global1.b.x), arg_1), arg_1, false), select(!vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(global1.b.x, global1.b.x, false), arg_1), all(vec2<bool>(global1.b.x, global1.b.x)) && true)), !select(arg_1, vec3<bool>(global3[_wgslsmith_index_u32(arg_3.a.a.x, 27u)] == 25440i, 2147483647i >= global3[_wgslsmith_index_u32(arg_2.a.x, 27u)], global3[_wgslsmith_index_u32(u_input.a.x, 27u)] <= arg_0.b), arg_1), select(arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.c.x, -139f) - global0.c.x) != _wgslsmith_f_op_f32(ceil(global0.c.x))));
    global3 = array<i32, 27>();
    global1 = arg_3;
    return vec3<f32>(global1.a.c.x, _wgslsmith_f_op_f32(-244f * global0.c.x), global1.a.c.x);
}

fn func_2(arg_0: vec4<f32>) -> vec3<f32> {
    global2 = array<vec2<f32>, 16>();
    global3 = array<i32, 27>();
    var var_0 = Struct_2(global1.a, select(global1.b, vec2<bool>(!global1.b.x, -593f >= global1.a.c.x), select(!(!vec2<bool>(global1.b.x, false)), select(select(vec2<bool>(true, global1.b.x), global1.b, true), select(global1.b, vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(false, global1.b.x)), global1.b.x), global1.b.x & any(vec4<bool>(global1.b.x, true, true, true)))), reverseBits(u_input.a));
    global0 = var_0.a;
    let var_1 = -275f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.a.c))) - _wgslsmith_f_op_vec3_f32(func_3(var_0.a, select(!select(vec3<bool>(false, false, false), vec3<bool>(false, global1.b.x, global1.b.x), false), !select(vec3<bool>(var_0.b.x, var_0.b.x, global1.b.x), vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, false, true)), false), Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, 0u, 26309u)), _wgslsmith_div_vec3_u32(global0.a, vec3<u32>(1921u, var_0.a.a.x, 51593u))), global1.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) - var_0.a.c)), Struct_2(Struct_1(vec3<u32>(21374u, 29923u, 4267u), -global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, var_1, 569f))), !var_0.b, u_input.a))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec3<u32>(95787u, ~(~51835u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.a.a.x, global1.c.x, 1u)), _wgslsmith_clamp_vec3_u32(~u_input.a, vec3<u32>(5485u, global0.a.x, 77448u), vec3<u32>(1u, global0.a.x, u_input.b)))), reverseBits(global0.b), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, global1.a.c.x, global1.a.c.x, 1000f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(332f, global1.a.c.x, -2355f, global0.c.x))))))))));
    global2 = array<vec2<f32>, 16>();
    let var_1 = select(select(global1.b, !vec2<bool>(global0.b != global1.a.b, global1.b.x), global1.b), vec2<bool>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_0.c.x) - _wgslsmith_f_op_f32(arg_0.x + 785f))), vec2<bool>(global1.b.x, true));
    var var_2 = vec2<i32>(2147483647i, _wgslsmith_mod_i32(~(-2147483647i), var_0.b));
    let var_3 = var_1.x;
    return ~countOneBits(~global1.a.a.x) > global1.a.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    var var_0 = vec4<bool>(false, _wgslsmith_f_op_f32(-1240f * global1.a.c.x) >= _wgslsmith_f_op_f32(378f + global0.c.x), global1.b.x, all(!select(select(vec4<bool>(arg_0.x, arg_1.b.x, false, true), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, global1.b.x), false), vec4<bool>(true, false, global1.b.x, true), arg_0.x)));
    let var_1 = global1.a;
    global3 = array<i32, 27>();
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(global1.a, !(!arg_0), Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(0u, arg_1.a.a.x, u_input.b), vec3<u32>(4488u, 1u, 28140u)), global1.a.a), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2.c)))), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_1.c.x, 4294967295u), vec3<u32>(19806u, 4294967295u, 12541u)), _wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(0u, 26u)], vec4<i32>(arg_1.a.b, arg_2.b, -9401i, arg_1.a.b)), _wgslsmith_f_op_vec3_f32(arg_1.a.c - vec3<f32>(global1.a.c.x, -726f, global0.c.x))), vec2<bool>(global1.b.x, global1.b.x), _wgslsmith_sub_vec3_u32(global1.c, vec3<u32>(0u, 1u, global0.a.x))))).x, 331f, false));
    var var_3 = _wgslsmith_f_op_vec2_f32(global0.c.zy + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.a, var_1.b, arg_1.a.c), var_0.wyz, arg_1.a, arg_1)).x), _wgslsmith_f_op_f32(-arg_1.a.c.x)), vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * 1630f))));
    return (firstTrailingBit(vec2<u32>(~4294967295u, 31284u & global0.a.x)) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_2.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global0.a.x, 4294967295u)))) ^ _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 35354u)), vec2<u32>(_wgslsmith_clamp_u32(arg_3, 81035u, global0.a.x), ~global1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(true, global1.b.x), select(select(select(global1.b, global1.b, vec2<bool>(true, global1.b.x)), global1.b, true), global1.b, global1.b.x), !select(!vec2<bool>(false, global1.b.x), global1.b, true));
    let var_1 = func_4(vec3<bool>(false, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.x, -273f, 274f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, global0.c.x, 273f)))), all(vec2<bool>(var_0.x, true))), Struct_2(Struct_1(vec3<u32>(89527u, u_input.b << (0u % 32u), ~0u), -global3[_wgslsmith_index_u32(~21591u, 27u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(-2097f, 1384f, global1.a.c.x), var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(880f, 143f, global1.a.c.x)))), select(select(global1.b, global1.b, false), vec2<bool>(!global1.b.x, global1.b.x | global1.b.x), global1.b), vec3<u32>(_wgslsmith_add_u32(~24512u, global1.c.x), ~min(global1.a.a.x, 65807u), max(global0.a.x, global0.a.x))), Struct_1(countOneBits(global0.a), firstLeadingBit(-global1.a.b), _wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(round(global1.a.c)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(2708u, 4294967295u, global0.a.x)), u_input.a), vec3<u32>(27017u, global0.a.x, _wgslsmith_add_u32(~global0.a.x, countOneBits(global1.c.x)))));
    var_0 = select(global1.b, select(select(global1.b, select(!global1.b, global1.b, !vec2<bool>(var_0.x, global1.b.x)), func_1(vec3<f32>(global0.c.x, 2056f, 695f)) && true), vec2<bool>(all(select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), false)), var_0.x), !(_wgslsmith_add_u32(var_1.x, 1u) < global0.a.x)), vec2<bool>(global1.b.x, !any(vec3<bool>(global1.b.x, var_0.x, false))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1631f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, 1374f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), 438f), _wgslsmith_f_op_f32(-global1.a.c.x))), ~abs(vec2<u32>(global1.c.x, global1.c.x) & firstTrailingBit(vec2<u32>(var_1.x, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.x, 417f, global1.a.c.x))))), true))), firstLeadingBit(vec2<i32>(global0.b, -1i)), vec4<u32>(1u, _wgslsmith_sub_u32(1u, 1u), func_4(!vec3<bool>(true, global1.b.x, true), Struct_2(Struct_1(global1.c, global1.a.b, vec3<f32>(global1.a.c.x, global0.c.x, -1268f)), !global1.b, global1.a.a), global1.a, 1u).x, ~4294967295u));
}

