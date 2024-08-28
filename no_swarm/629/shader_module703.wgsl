struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 9950i;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<u32>(34634u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(30027u, 76132u)), Struct_2(vec2<u32>(15592u, 61909u)));

var<private> global2: Struct_2;

var<private> global3: array<u32, 31>;

var<private> global4: array<vec4<i32>, 17>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    global0 = -u_input.a;
    var var_0 = Struct_2(global2.a);
    var var_1 = _wgslsmith_div_i32(max(u_input.a, ~(~17962i)), 1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, 741f, -1000f) - vec3<f32>(-535f, -1000f, 1000f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, -833f, -233f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(-910f)), 1f, _wgslsmith_f_op_f32(-1803f - 501f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(295f, -1382f, -991f), vec3<f32>(-1000f, -438f, -550f), vec3<bool>(true, true, false)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(742f, 411f)), _wgslsmith_div_f32(1000f, 1000f), _wgslsmith_div_f32(207f, -258f)))), -35279i >= u_input.a)));
    var var_3 = min(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(5696u, 0u, 1u, 17083u), countOneBits(vec4<u32>(var_0.a.x, var_0.a.x, 81023u, u_input.b.x))), countOneBits(~(vec4<u32>(1u, global2.a.x, u_input.b.x, 53343u) & vec4<u32>(37494u, global2.a.x, 4294967295u, 15809u)))), _wgslsmith_dot_vec2_u32(var_0.a, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global2.a, vec2<u32>(global2.a.x, 2446u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 38831u), global2.a)), vec2<u32>(4294967295u, ~0u))));
    return abs(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 31u)], 110592u, 1693u, 0u), ~vec4<u32>(var_0.a.x, u_input.c, 4294967295u, global2.a.x)), vec4<u32>(max(33718u, 20591u), global2.a.x, _wgslsmith_clamp_u32(16839u, 34838u, 6261u), min(1u, 16608u))), 4294967295u));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    global2 = global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(1u, ~global2.a.x))), 4u)];
    global2 = Struct_2(select(vec2<u32>(max(firstLeadingBit(28366u), ~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global2.a.x, 31u)]), vec2<u32>(global2.a.x, 4294967295u))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(37296u, 31u)]), global2.a, vec2<u32>(global2.a.x, u_input.c)), func_3()), arg_1));
    let var_0 = Struct_1(reverseBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(-40809i, u_input.a, u_input.a), ~vec3<i32>(u_input.a, 51819i, u_input.a)) ^ -abs(vec3<i32>(u_input.a, -28354i, 1i))), all(!arg_1), _wgslsmith_f_op_f32(f32(-1f) * -913f));
    let var_1 = global1[_wgslsmith_index_u32(global2.a.x ^ u_input.c, 4u)];
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(abs(-2147483647i)), u_input.a << (u_input.b.x % 32u), firstTrailingBit(33939i), 1i), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 0u), 31u)] | ~1u), abs(1u)), 17u)]);
    return global1[_wgslsmith_index_u32(var_1.a.x, 4u)];
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = true;
    var var_1 = abs(global3[_wgslsmith_index_u32(55968u, 31u)]);
    var var_2 = Struct_1(reverseBits(-(~arg_2.xyx)) & arg_2.yww, !all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), 1203f);
    global4 = array<vec4<i32>, 17>();
    var var_3 = !(!select(vec4<bool>(var_2.b | var_2.b, false, select(true, false, var_2.b), var_2.b), select(select(vec4<bool>(var_2.b, false, var_2.b, var_2.b), vec4<bool>(var_2.b, true, var_2.b, true), vec4<bool>(var_2.b, true, false, var_2.b)), select(vec4<bool>(true, var_2.b, var_2.b, true), vec4<bool>(true, true, var_2.b, var_2.b), vec4<bool>(var_2.b, var_2.b, var_2.b, true)), select(vec4<bool>(false, var_2.b, false, false), vec4<bool>(var_2.b, var_2.b, false, true), vec4<bool>(var_2.b, var_2.b, var_2.b, true))), !(!vec4<bool>(false, var_2.b, false, var_2.b))));
    return arg_3.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = 0u;
    let var_1 = ~(~(~vec4<u32>(4294967295u, 18198u, global2.a.x, 0u))) & vec4<u32>(global3[_wgslsmith_index_u32(~firstTrailingBit(~1u), 31u)], 48481u, ~func_4(~u_input.a, func_2(false, vec2<bool>(false, false)), ~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), u_input.b.yy), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, 50194u) | var_0, _wgslsmith_dot_vec2_u32(global2.a, vec2<u32>(4294967295u, 0u))));
    var var_2 = !vec2<bool>(all(vec2<bool>(true, true)), true);
    var var_3 = func_2(all(!select(!vec4<bool>(var_2.x, var_2.x, true, true), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(false, true, var_2.x, false), vec4<bool>(var_2.x, true, false, var_2.x)), var_2.x)), !select(select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(true, var_2.x), !var_2.x), vec2<bool>(true, true), !var_2.x));
    let var_4 = select(!select(select(!vec2<bool>(var_2.x, true), !vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, false)), vec2<bool>(var_2.x, u_input.a < 2147483647i), true), vec2<bool>(any(select(!vec4<bool>(true, false, var_2.x, var_2.x), !vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(false, var_2.x, var_2.x, true))), var_2.x), !(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, true), true)));
    return select(~min(max(vec4<u32>(global3[_wgslsmith_index_u32(8697u, 31u)], 58441u, 21263u, global3[_wgslsmith_index_u32(41517u, 31u)]), max(vec4<u32>(global2.a.x, 26727u, 32152u, 1u), vec4<u32>(54792u, 20119u, global2.a.x, global3[_wgslsmith_index_u32(13261u, 31u)]))), ~_wgslsmith_clamp_vec4_u32(var_1, var_1, vec4<u32>(0u, var_3.a.x, 4294967295u, 17287u))), _wgslsmith_add_vec4_u32(var_1, var_1), select(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true), select(!(!vec4<bool>(var_2.x, var_4.x, true, false)), !(!vec4<bool>(true, var_2.x, var_2.x, false)), vec4<bool>(2147483647i < u_input.a, var_4.x, all(vec3<bool>(false, var_2.x, var_2.x)), var_2.x)), !(!vec4<bool>(true, false, true, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 31>();
    global0 = ~((abs(~u_input.a) >> (0u % 32u)) ^ min(~(-6358i), -u_input.a));
    var var_0 = select(select(vec4<u32>(~37303u, 49848u, _wgslsmith_sub_u32(global2.a.x & global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]), ~_wgslsmith_mult_u32(u_input.c, global2.a.x)), (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global2.a.x, 31u)], 1u, 17936u) >> ((vec4<u32>(global2.a.x, global3[_wgslsmith_index_u32(0u, 31u)], 4294967295u, 4294967295u) << (vec4<u32>(1u, global2.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 31u)], 47844u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (min(vec4<u32>(38601u, u_input.c, 0u, 1u), ~vec4<u32>(34049u, 4294967295u, 0u, 1u)) % vec4<u32>(32u)), true), func_1(), select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false))));
    global4 = array<vec4<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.b, (vec3<u32>(u_input.c, u_input.c, var_0.x) | ~vec3<u32>(14340u, 1u, 13361u)) << ((u_input.b ^ var_0.wwz) % vec3<u32>(32u))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-80440i & u_input.a, -21334i), ~vec2<i32>(u_input.a, u_input.a)), select(min(abs(vec2<i32>(-49419i, -2147483647i)), ~vec2<i32>(u_input.a, u_input.a)), select(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(6414i, u_input.a), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
}

