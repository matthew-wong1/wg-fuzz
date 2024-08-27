struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<u32>(1u, 1u, 11859u), Struct_1(vec3<u32>(65898u, 0u, 22651u)), false), Struct_2(vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<u32>(20950u, 1u, 1u)), false), Struct_2(vec3<u32>(10794u, 91128u, 0u), Struct_1(vec3<u32>(52934u, 23833u, 29049u)), true), Struct_2(vec3<u32>(0u, 61224u, 4294967295u), Struct_1(vec3<u32>(1u, 1u, 9751u)), false), Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(vec3<u32>(19621u, 1u, 28809u)), true), Struct_2(vec3<u32>(18577u, 1u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 5388u, 33312u)), false), Struct_2(vec3<u32>(75928u, 0u, 52157u), Struct_1(vec3<u32>(56363u, 1u, 4294967295u)), true), Struct_2(vec3<u32>(53252u, 31401u, 1u), Struct_1(vec3<u32>(45784u, 78979u, 41468u)), false), Struct_2(vec3<u32>(30846u, 4294967295u, 35177u), Struct_1(vec3<u32>(1u, 0u, 30424u)), true), Struct_2(vec3<u32>(4294967295u, 57547u, 7159u), Struct_1(vec3<u32>(1u, 20310u, 4294967295u)), true));

var<private> global3: vec4<f32>;

var<private> global4: Struct_3 = Struct_3(vec2<bool>(false, true), -492f, vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = 463f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-339f)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1))))), 222f);
    var var_3 = vec2<i32>(abs(abs(u_input.e.x) >> (46084u % 32u)), ~_wgslsmith_clamp_i32(u_input.e.x, min(max(u_input.e.x, 1i), u_input.e.x), -2147483647i));
    global1 = array<vec2<bool>, 32>();
    return global4.d.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>) -> bool {
    global2 = array<Struct_2, 10>();
    global4 = Struct_3(vec2<bool>(!arg_0.x, true), global4.b, firstTrailingBit(vec2<u32>(u_input.c, 0u)), ~vec2<u32>(countOneBits(~1u), _wgslsmith_dot_vec2_u32(global4.c, ~vec2<u32>(global4.d.x, u_input.c))));
    let var_0 = Struct_3(!global4.a, _wgslsmith_f_op_f32(f32(-1f) * -2425f), abs((~global4.c | vec2<u32>(global4.d.x, u_input.c)) & ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(global4.d.x, 45927u))), vec2<u32>(77945u, u_input.c));
    global4 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global4.c.x), 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global4.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1057f, global4.b)))) + -833f), select(_wgslsmith_sub_vec2_u32(~(global4.c & vec2<u32>(var_0.c.x, global4.c.x)), _wgslsmith_add_vec2_u32(var_0.c, max(vec2<u32>(u_input.c, 4294967295u), global4.c))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global4.d.x, u_input.c), u_input.c), var_0.d, _wgslsmith_div_vec2_u32(vec2<u32>(107280u, 10134u), vec2<u32>(11613u, var_0.d.x)) << (abs(global4.d) % vec2<u32>(32u))), false), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(1u, 0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.d, var_0.d), ~(~vec2<u32>(0u, 10813u))), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(25148u, global4.d.x), min(vec2<u32>(var_0.c.x, 1u), global4.d), vec2<u32>(55090u, var_0.c.x)))));
    var var_1 = _wgslsmith_mod_vec3_i32(select(~_wgslsmith_mod_vec3_i32(u_input.e.yzx, vec3<i32>(7665i, -33033i, -1i)), u_input.e.zww, !arg_0) >> (firstLeadingBit(vec3<u32>(reverseBits(1u), _wgslsmith_mult_u32(var_0.d.x, 5522u), _wgslsmith_mod_u32(1u, 61491u))) % vec3<u32>(32u)), max(vec3<i32>(arg_1.x, -19872i, _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.d.x, 11104i))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, 71573i) | _wgslsmith_clamp_i32(-63984i, 2147483647i, 36606i), _wgslsmith_dot_vec2_i32(select(arg_1, vec2<i32>(1i, u_input.d.x), true), -arg_1), _wgslsmith_clamp_i32(arg_1.x, -2147483647i, u_input.b.x))));
    return global4.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> vec4<bool> {
    return !(!(!(!(!vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_2, 10>();
    var var_0 = Struct_1(arg_0.zyw);
    global4 = Struct_3(!vec2<bool>(true, global4.a.x), _wgslsmith_f_op_f32(step(-181f, _wgslsmith_f_op_f32(ceil(-631f)))), global4.c ^ vec2<u32>(~58996u, u_input.c), ~vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, arg_0.x), vec3<u32>(var_0.a.x, 1u, 87561u), vec3<bool>(global4.a.x, global4.a.x, global4.a.x)), var_0.a >> (vec3<u32>(0u, 38167u, global4.c.x) % vec3<u32>(32u))), var_0.a.x));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.d.x, abs(firstTrailingBit((arg_0.x ^ arg_0.x) >> (_wgslsmith_mult_u32(0u, arg_0.x) % 32u)))), 10u)];
    var var_2 = !select(vec4<bool>(var_1.c, var_1.c, !var_1.c, true), func_4(Struct_2(arg_0.xyz, Struct_1(vec3<u32>(arg_0.x, 1u, 4294967295u)), func_3(vec3<bool>(false, false, var_1.c), vec2<i32>(1i, u_input.d.x))), u_input.d.x, vec3<u32>(34920u, var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.x, var_0.a.x), var_1.b.a)), _wgslsmith_div_i32(~0i, 63142i)), !vec4<bool>(!var_1.c, true, func_4(Struct_2(arg_0.wzy, var_1.b, true), 0i, var_1.a, u_input.b.x).x, global4.a.x));
    return Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~global4.c.x, 1u, 1u), var_1.a.x, 1u) ^ vec3<u32>(0u, 18225u, 78724u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(global4.d.x, 37855u, u_input.c), vec3<u32>(global4.c.x, 44056u, u_input.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 360f, global3.x, global4.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b, global4.b, 174f, 1366f) * vec4<f32>(-3192f, 2127f, global4.b, -1630f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.b, global4.b, global3.x, global3.x), vec4<f32>(-194f, global3.x, global4.b, global4.b), !vec4<bool>(global4.a.x, false, global4.a.x, global4.a.x)))))));
    var var_1 = func_2(~vec4<u32>(min(func_1(Struct_3(global4.a, global3.x, vec2<u32>(var_0.a.a.x, 0u), vec2<u32>(29232u, var_0.a.a.x))), 4294967295u), global4.c.x, _wgslsmith_add_u32(82404u, u_input.c) & _wgslsmith_mod_u32(0u, var_0.a.a.x), 4294967295u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1848f), _wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(step(535f, 152f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(419f, global4.b, 154f, -751f))))))));
    global1 = array<vec2<bool>, 32>();
    global4 = Struct_3(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(global4.d.x, _wgslsmith_div_u32(u_input.c, u_input.c))), 32u)], _wgslsmith_div_f32(var_0.b.x, var_0.b.x), vec2<u32>(func_2(~(~vec4<u32>(4294967295u, 61321u, u_input.c, var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, var_0.b.x, -941f, var_0.b.x)))).a.x, func_1(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.x, 10711u, var_1.a.x, 0u), vec4<u32>(0u, 6623u, 20388u, 0u)), 32u)], global3.x, var_1.a.zy, vec2<u32>(0u, u_input.c) & var_1.a.yy))), ~select(~vec2<u32>(14391u, var_0.a.a.x), var_0.a.a.yy, all(vec3<bool>(global4.a.x, false, global4.a.x))) << ((vec2<u32>(~86506u, var_1.a.x) | firstTrailingBit(global4.c << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_2 = firstLeadingBit(abs(firstTrailingBit(abs(u_input.e)) ^ vec4<i32>(max(u_input.d.x, -1i), u_input.b.x, ~u_input.a, u_input.b.x & u_input.b.x)));
    global3 = vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-402f)) * _wgslsmith_f_op_f32(f32(-1f) * -2145f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.x)), 751f) + global3.x) - 1304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b * global3.x)));
    global2 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zw, -(~(~select(u_input.e.xy, var_2.xw, vec2<bool>(true, global4.a.x)))));
}

