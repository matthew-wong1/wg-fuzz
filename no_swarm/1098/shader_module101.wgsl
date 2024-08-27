struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 31> = array<f32, 31>(574f, 305f, 563f, 294f, -405f, -880f, 1000f, 1000f, -1000f, -892f, -706f, -1063f, -361f, -386f, 153f, -495f, 342f, 686f, 289f, 2167f, 1257f, 1769f, 2722f, -1653f, -508f, 286f, -2104f, -1000f, 773f, -1000f, 730f);

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = ~(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(~global2.c, 21972u, _wgslsmith_clamp_u32(4294967295u, global2.e.d.x, global3.d.x), abs(11136u))) | vec4<u32>(_wgslsmith_add_u32(global3.e.d.x, arg_0.e.d.x), 39695u, global3.d.x, ~_wgslsmith_dot_vec3_u32(global3.a.d, arg_0.a.d)));
    let var_1 = arg_0;
    let var_2 = Struct_1(all(global3.a.b), select(var_1.e.b, !global3.e.c.zy, select(global3.a.c.zz, vec2<bool>(true, !arg_0.a.a), global0.a)), !select(vec3<bool>(true, any(global0.c), false), vec3<bool>(global0.c.x, !var_1.e.c.x, true), any(select(vec4<bool>(arg_0.a.c.x, global0.b.x, var_1.a.c.x, arg_0.a.b.x), vec4<bool>(false, true, true, global2.a.a), vec4<bool>(false, var_1.a.b.x, arg_0.a.a, true)))), max(global3.e.d, vec3<u32>(~_wgslsmith_mult_u32(0u, global3.e.d.x), ~_wgslsmith_mod_u32(global2.a.d.x, var_1.a.d.x), ~(~arg_0.c))));
    global0 = global2.e;
    global0 = var_1.e;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(select(u_input.c, ~vec3<i32>(u_input.a, u_input.c.x, -7451i) << (var_1.e.d % vec3<u32>(32u)), global0.c), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 21142i, u_input.a), vec3<i32>(0i, 388i, 0i), u_input.b.wyz) | _wgslsmith_div_vec3_i32(u_input.b.zzz, u_input.b.wzz))), -27302i, 1i);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>) -> vec3<i32> {
    let var_0 = select(arg_0, select(arg_0, select(arg_0, arg_0, true), vec4<bool>(global2.e.a, global3.e.a, global0.c.x, !all(vec2<bool>(true, false)))), vec4<bool>(all(select(!vec3<bool>(false, true, arg_0.x), global0.c, true)), select(false, false, !all(vec2<bool>(global0.b.x, global2.a.c.x))), global2.e.b.x, all(select(vec4<bool>(global0.c.x, arg_0.x, global3.e.c.x, global3.e.a), !vec4<bool>(global3.e.a, true, false, false), global2.a.a))));
    return func_3(Struct_2(Struct_1(all(vec4<bool>(false, arg_0.x, var_0.x, false)), !select(global2.e.c.zy, vec2<bool>(var_0.x, arg_0.x), vec2<bool>(false, false)), !vec3<bool>(var_0.x, global3.a.c.x, false), select(vec3<u32>(global0.d.x, global2.c, 1u) << (vec3<u32>(global3.e.d.x, 0u, 51480u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global3.e.d.x, global0.d.x), vec3<u32>(global0.d.x, 99011u, 1u)), -1021f >= global2.b)), 723f, 4294967295u, global2.a.d, global2.a));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32(func_2(vec4<bool>(global0.c.x & (0u < u_input.e.x), (2824i & u_input.c.x) == -54242i, false, global3.a.a), any(vec3<bool>(true, 390f != arg_0, !global2.a.c.x)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(28561i, -15610i), u_input.b.xy) << (~vec2<u32>(u_input.e.x, global0.d.x) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(0i, -30171i), -u_input.d))), vec3<i32>(firstTrailingBit(~42634i), u_input.a, _wgslsmith_mult_i32(u_input.c.x, u_input.a)));
    let var_1 = Struct_1(any(global0.b), vec2<bool>(global2.e.c.x, false), !vec3<bool>(global0.a, true, false), ~(~(~global2.e.d) & ~firstLeadingBit(vec3<u32>(global3.a.d.x, 15401u, global2.e.d.x))));
    let var_2 = _wgslsmith_f_op_f32(step(-405f, _wgslsmith_f_op_f32(ceil(global3.b))));
    var var_3 = any(!select(select(vec4<bool>(false, false, global3.e.c.x, false), vec4<bool>(true, global0.a, true, global0.c.x), u_input.d >= var_0), !(!vec4<bool>(global2.e.c.x, false, true, true)), !vec4<bool>(true, var_1.a, global2.e.a, false)));
    let var_4 = _wgslsmith_sub_u32(0u, global0.d.x);
    return Struct_2(Struct_1(true & all(!vec4<bool>(var_1.a, global3.e.a, false, var_1.c.x)), select(vec2<bool>(global2.a.c.x | true, global2.e.b.x), !select(global3.e.b, vec2<bool>(true, global3.e.b.x), global2.e.c.xz), !select(vec2<bool>(true, global0.a), global2.e.b, global3.e.c.x)), vec3<bool>(all(vec2<bool>(true, global2.e.b.x)), !(!global0.a), !(!global3.a.c.x)), u_input.e.yzw ^ vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(30346u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(var_4, var_4, 947u, 12069u)), 1u)), var_2, _wgslsmith_clamp_u32(var_4, _wgslsmith_sub_u32(min(~global0.d.x, _wgslsmith_add_u32(13215u, global2.a.d.x)), ~(~32276u)), 46654u), vec3<u32>(~37042u, ~(~_wgslsmith_div_u32(u_input.e.x, global3.d.x)), 74489u >> (u_input.e.x % 32u)), Struct_1(!((8126u | global0.d.x) > 12970u), global0.b, !vec3<bool>(global1[_wgslsmith_index_u32(var_1.d.x, 31u)] != global3.b, !global2.a.b.x, true), ~vec3<u32>(var_1.d.x, 4294967295u, u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f + -838f))));
    let var_1 = var_0.d.x ^ (74418u << (min(select(global3.d.x, 90316u, global3.a.c.x) & global0.d.x, abs(func_1(-1894f).a.d.x)) % 32u));
    global1 = array<f32, 31>();
    global3 = Struct_2(func_1(-572f).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(abs(761f)))) + global2.b), global2.c, ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.x, 32880u, var_0.e.d.x) ^ vec3<u32>(1u, 25758u, 0u), vec3<u32>(global2.e.d.x, 1u, 10166u))), var_0.a);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-568f, global2.b, global2.a.b.x)), _wgslsmith_f_op_f32(floor(1215f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(92191u, 31u)] + -1149f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, -1763f, 1295f))))));
    global2 = Struct_2(global2.e, _wgslsmith_f_op_f32(-global2.b), ~0u, _wgslsmith_add_vec3_u32(min(~vec3<u32>(10704u, 1u, 1u), var_2.a.d), u_input.e.yzy), global2.a);
    global3 = Struct_2(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(258f)), global2.b))), 1261f, -1168f != var_0.b)), ~func_1(global2.b).e.d.x, global2.e.d ^ countOneBits(vec3<u32>(abs(23253u), global2.d.x, var_2.c)), Struct_1(var_0.e.a, !var_0.a.b, vec3<bool>(true, global3.e.b.x, ~var_2.d.x != 4294967295u), vec3<u32>(~global3.e.d.x, ~(~18611u), var_2.e.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(77789i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_2.b)), vec2<i32>(1i, u_input.d) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, u_input.b.x) ^ u_input.c, u_input.c), u_input.a), _wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.yz) | 11836i);
}

