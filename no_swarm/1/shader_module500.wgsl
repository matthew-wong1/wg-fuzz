struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<u32>(4294967295u, 12003u, 0u));

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<i32>(-4101i, 0i, 0i, 2147483647i)), Struct_2(vec4<i32>(0i, i32(-2147483648), -30297i, 54540i)), Struct_2(vec4<i32>(0i, 0i, -13824i, 0i)), Struct_2(vec4<i32>(-39637i, -52856i, -1i, -2418i)), Struct_2(vec4<i32>(-4994i, -1i, 2147483647i, 43373i)), Struct_2(vec4<i32>(-73832i, -79222i, 28869i, 1i)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648))), Struct_2(vec4<i32>(2147483647i, -31071i, 0i, i32(-2147483648))), Struct_2(vec4<i32>(0i, 1i, -4776i, i32(-2147483648))), Struct_2(vec4<i32>(i32(-2147483648), -13390i, 61276i, 32368i)), Struct_2(vec4<i32>(-2415i, -27190i, i32(-2147483648), 40161i)), Struct_2(vec4<i32>(1i, -44087i, -27697i, 1i)), Struct_2(vec4<i32>(-39548i, -30024i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(1i, i32(-2147483648), 15429i, 2147483647i)), Struct_2(vec4<i32>(0i, -12168i, 17776i, 486i)), Struct_2(vec4<i32>(1i, 17120i, -1i, -54747i)), Struct_2(vec4<i32>(-98260i, -39404i, 1i, -61361i)), Struct_2(vec4<i32>(2147483647i, -55401i, 2147483647i, 26370i)), Struct_2(vec4<i32>(66288i, -2794i, -14208i, 78782i)), Struct_2(vec4<i32>(1i, -2019i, 0i, -11207i)), Struct_2(vec4<i32>(-18527i, -49234i, 15093i, 36975i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), 1i, i32(-2147483648))), Struct_2(vec4<i32>(0i, 4937i, i32(-2147483648), 2147483647i)), Struct_2(vec4<i32>(2147483647i, 51062i, 12073i, 0i)));

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-47866i, -1i), vec2<i32>(-86047i, -1i), vec2<i32>(26797i, 1i), vec2<i32>(13895i, 1786i), vec2<i32>(-11872i, -1i));

var<private> global4: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(76908u, 55378u, 76560u, 1u), vec4<u32>(44334u, 0u, 0u, 18024u), vec4<u32>(66702u, 1044u, 16635u, 0u), vec4<u32>(1u, 1u, 14159u, 110309u), vec4<u32>(10364u, 4294967295u, 4294967295u, 43554u), vec4<u32>(4294967295u, 0u, 4385u, 0u), vec4<u32>(4294967295u, 70893u, 0u, 13676u), vec4<u32>(4294967295u, 5431u, 21801u, 1u), vec4<u32>(1u, 25416u, 1u, 4294967295u), vec4<u32>(34108u, 57041u, 22988u, 4294967295u), vec4<u32>(1u, 23515u, 19759u, 58824u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(1u, 74666u, 130926u, 4294967295u), vec4<u32>(7544u, 1u, 0u, 1u), vec4<u32>(38851u, 4294967295u, 0u, 52357u), vec4<u32>(1u, 0u, 96716u, 23187u), vec4<u32>(7944u, 4294967295u, 39698u, 134586u), vec4<u32>(32549u, 1u, 39196u, 1u), vec4<u32>(0u, 5131u, 4104u, 0u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec3<bool> {
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    var var_0 = min((firstTrailingBit(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, -1i))) >> (~vec3<u32>(arg_1.x, 26421u, 4294967295u) % vec3<u32>(32u))) ^ -(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, 2147483647i, -2147483647i));
    var var_1 = Struct_2(select(vec4<i32>(-65489i, 49496i, 83586i, abs(-var_0.x)), min(countOneBits(vec4<i32>(u_input.a, -1i, var_0.x, -17995i) | vec4<i32>(-19699i, 40969i, u_input.a, -9967i)), vec4<i32>(15869i, -1i, firstTrailingBit(0i), -var_0.x)), !global1[_wgslsmith_index_u32(8743u, 9u)]));
    var var_2 = abs(vec2<i32>(abs(u_input.a), ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, 2147483647i, -1i, -2147483647i)), vec4<i32>(var_1.a.x, var_0.x, -2147483647i, var_1.a.x))));
    return !select(select(vec3<bool>(global0.a | global0.a, !global0.a, any(global1[_wgslsmith_index_u32(0u, 9u)])), !(!vec3<bool>(false, global0.a, true)), select(false, true, true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), global0.a)), vec3<bool>(global0.a, !any(global1[_wgslsmith_index_u32(1u, 9u)]), any(!vec2<bool>(true, global0.a))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool) -> vec3<u32> {
    var var_0 = select(select(!vec3<bool>(all(vec3<bool>(true, arg_0, global0.a)), select(false, arg_2, arg_2), global0.a), vec3<bool>(!any(vec3<bool>(global0.a, false, true)), !all(vec2<bool>(true, arg_2)), arg_2), vec3<bool>(true, false, select(!global0.a, all(vec2<bool>(arg_0, arg_2)), 26399u <= global0.b.x))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(!arg_2, !arg_0, true), any(!vec2<bool>(global0.a, arg_2))), select(!vec3<bool>(true, global0.a, arg_2), !func_3(vec3<f32>(382f, -1888f, 1094f), global4[_wgslsmith_index_u32(16271u, 19u)]), any(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_2, arg_0, arg_0), true))), select(!(!vec3<bool>(global0.a, false, false)), select(func_3(vec3<f32>(-2023f, -1000f, -1122f), vec4<u32>(arg_1, global0.b.x, 12515u, 13155u)), vec3<bool>(global0.a, false, true), true), select(vec3<bool>(arg_2, true, true), !vec3<bool>(true, global0.a, global0.a), !vec3<bool>(global0.a, arg_0, false)))), true);
    global4 = array<vec4<u32>, 19>();
    global2 = array<Struct_2, 24>();
    var var_1 = Struct_4(Struct_2(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)));
    global1 = array<vec4<bool>, 9>();
    return _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, _wgslsmith_mult_u32(global0.b.x, 26051u), arg_1), firstTrailingBit(global0.b)), firstTrailingBit(global0.b));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    global0 = Struct_1(!all(!select(arg_2, arg_2, true)), _wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(arg_1, global0.b.x, 52468u)), ~abs(global0.b) >> (reverseBits(vec3<u32>(global0.b.x, 55291u, 41063u)) % vec3<u32>(32u)), ~(~func_2(true, arg_1, false))));
    let var_0 = global2[_wgslsmith_index_u32(~global0.b.x, 24u)];
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(~4294967295u, 24u)]);
    var_1 = Struct_4(Struct_2(-(~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.a.x, var_1.a.a.x, -1i, u_input.a), vec4<i32>(var_1.a.a.x, -33066i, -1i, 0i)))));
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(global0.b.x, 24u)]);
    return _wgslsmith_f_op_f32(trunc(-747f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(~1055u, 24u)], select(!vec3<bool>(true, global0.a, true), !vec3<bool>(true, any(vec3<bool>(global0.a, global0.a, false)), any(vec4<bool>(global0.a, global0.a, true, false))), select(vec3<bool>(false, all(vec4<bool>(false, true, false, true)), select(global0.a, true, global0.a)), vec3<bool>(true, true, true), select(vec3<bool>(false, global0.a, true), !vec3<bool>(false, global0.a, false), !global0.a))), global0.b.x);
    var var_1 = ~(~select(global0.b.xz | global0.b.xx, vec2<u32>(4294967295u, ~var_0.c), false));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(953f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(3058f, 1000f)) * -379f) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1000f * -1952f)))), _wgslsmith_f_op_f32(func_1(any(vec3<bool>(true, !global0.a, var_0.a.a.x != u_input.a)), ~42907u ^ ~(~global0.b.x), vec3<bool>(all(!vec2<bool>(var_0.b.x, false)), true, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1311f, -1138f), 1f)))), 202f)), _wgslsmith_f_op_f32(-2223f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1342f, 541f)))))));
    let var_3 = Struct_2(_wgslsmith_div_vec4_i32(max(vec4<i32>(-9348i, -50334i, -17085i, var_0.a.a.x), var_0.a.a), select(select(vec4<i32>(52192i, 17053i, -1i, var_0.a.a.x), vec4<i32>(var_0.a.a.x, u_input.a, u_input.a, 0i), vec4<bool>(global0.a, global0.a, true, var_0.b.x)), var_0.a.a | var_0.a.a, all(vec2<bool>(false, global0.a)))) & _wgslsmith_mod_vec4_i32(var_0.a.a, var_0.a.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1000f, var_2.x) - vec4<f32>(2832f, var_2.x, -1373f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(904f, var_2.x, var_2.x, var_2.x), vec4<f32>(303f, var_2.x, -388f, -730f), select(vec4<bool>(global0.a, var_0.b.x, true, var_0.b.x), vec4<bool>(false, global0.a, false, var_0.b.x), vec4<bool>(false, global0.a, var_0.b.x, true))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -402f, var_2.x, var_2.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-475f, -1770f, var_2.x, var_2.x), vec4<f32>(-647f, 472f, var_2.x, var_2.x)))))));
    let var_5 = Struct_1(false, vec3<u32>(125062u, func_2(true, ~50860u, true).x >> (27937u % 32u), var_1.x));
    var var_6 = vec3<u32>(var_5.b.x, ~(var_5.b.x | ~16555u), global0.b.x & ~var_5.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(41489i, -54270i, var_0.a.a.x, -(~var_0.a.a.x)), vec4<i32>(-2223i, -var_3.a.x, _wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(var_0.a.a.x, 0i)), 0i)), _wgslsmith_div_u32(_wgslsmith_div_u32(78566u, var_1.x) | 1u, reverseBits(0u)), var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_4.x, -337f), _wgslsmith_f_op_f32(max(var_4.x, var_2.x)))) - _wgslsmith_f_op_f32(-var_2.x)))));
}

