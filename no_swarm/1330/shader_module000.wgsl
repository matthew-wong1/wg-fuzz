struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -1070f, vec2<i32>(26064i, -22413i), vec3<u32>(36550u, 1u, 0u), 1u);

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, 1820f, vec2<i32>(1i, 10727i), vec3<u32>(1u, 4294967295u, 2243u), 2812u), Struct_1(true, 2009f, vec2<i32>(25542i, i32(-2147483648)), vec3<u32>(1681u, 80638u, 7687u), 10122u), Struct_1(false, -772f, vec2<i32>(1i, i32(-2147483648)), vec3<u32>(16321u, 0u, 8242u), 1u), Struct_1(false, 213f, vec2<i32>(i32(-2147483648), 1i), vec3<u32>(1u, 52483u, 16955u), 21877u), Struct_1(false, -769f, vec2<i32>(1i, -45061i), vec3<u32>(30491u, 45180u, 1u), 4294967295u), Struct_1(false, -165f, vec2<i32>(-47630i, -1700i), vec3<u32>(34083u, 2406u, 36215u), 7460u), Struct_1(false, -434f, vec2<i32>(56843i, -22260i), vec3<u32>(1u, 16692u, 7527u), 41558u), Struct_1(true, -195f, vec2<i32>(2147483647i, 2147483647i), vec3<u32>(57143u, 0u, 83339u), 4294967295u), Struct_1(false, 1113f, vec2<i32>(6626i, 10513i), vec3<u32>(1u, 1u, 125079u), 4294967295u), Struct_1(false, 580f, vec2<i32>(-34145i, i32(-2147483648)), vec3<u32>(33588u, 90940u, 55689u), 1u), Struct_1(false, -1225f, vec2<i32>(12643i, 0i), vec3<u32>(4294967295u, 0u, 7351u), 4239u), Struct_1(false, 1136f, vec2<i32>(24560i, -13944i), vec3<u32>(0u, 10887u, 0u), 80571u), Struct_1(false, 922f, vec2<i32>(0i, -43660i), vec3<u32>(0u, 14861u, 1u), 4294967295u), Struct_1(false, 262f, vec2<i32>(72144i, 2147483647i), vec3<u32>(1u, 0u, 7617u), 1u), Struct_1(false, 461f, vec2<i32>(-1i, 0i), vec3<u32>(1u, 49714u, 21535u), 0u), Struct_1(true, 390f, vec2<i32>(38270i, 9686i), vec3<u32>(1u, 21032u, 1u), 0u), Struct_1(false, -1282f, vec2<i32>(2916i, 26064i), vec3<u32>(0u, 51342u, 36293u), 0u), Struct_1(false, -287f, vec2<i32>(23764i, 33838i), vec3<u32>(1u, 81230u, 30374u), 34082u), Struct_1(true, 161f, vec2<i32>(7696i, 21216i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 40702u), Struct_1(false, -1198f, vec2<i32>(52711i, 31980i), vec3<u32>(1u, 4294967295u, 61514u), 16879u), Struct_1(true, 445f, vec2<i32>(37920i, 9471i), vec3<u32>(1u, 19441u, 26913u), 13329u), Struct_1(true, 1938f, vec2<i32>(3951i, -25577i), vec3<u32>(0u, 1u, 67069u), 38628u), Struct_1(true, -107f, vec2<i32>(6548i, 7667i), vec3<u32>(51592u, 74558u, 15091u), 4294967295u), Struct_1(true, 375f, vec2<i32>(-28054i, 2147483647i), vec3<u32>(1u, 43109u, 4294967295u), 59345u), Struct_1(false, -371f, vec2<i32>(-5436i, 28167i), vec3<u32>(0u, 25110u, 98830u), 56740u));

var<private> global2: Struct_1 = Struct_1(true, 921f, vec2<i32>(30574i, 1i), vec3<u32>(37219u, 34805u, 1u), 1u);

var<private> global3: vec3<u32> = vec3<u32>(3943u, 40741u, 35310u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> vec4<u32> {
    global3 = ~firstTrailingBit(global2.d);
    let var_0 = Struct_1(global2.a, -985f, ~vec2<i32>(3333i, global2.c.x), min(~(~global0.d ^ vec3<u32>(global0.d.x, 14545u, u_input.d)), vec3<u32>(0u, 1u, ~_wgslsmith_mod_u32(0u, global2.d.x))), ~u_input.d);
    global1 = array<Struct_1, 25>();
    global3 = select(vec3<u32>(global0.e, select(global0.e, countOneBits(var_0.e), select(global2.a, var_0.a, true) == select(true, arg_1, var_0.a)), 1u), ~vec3<u32>(global0.d.x, ~global3.x, 1u) >> (abs(vec3<u32>(_wgslsmith_clamp_u32(global2.d.x, global0.e, 0u), ~5989u, 26259u)) % vec3<u32>(32u)), !vec3<bool>(any(!vec3<bool>(var_0.a, global2.a, var_0.a)), true, var_0.a));
    var var_1 = select(vec4<bool>(any(!(!vec2<bool>(arg_1, global2.a))), global0.a, var_0.a && true, var_0.a), !(!(!select(vec4<bool>(var_0.a, global0.a, true, false), vec4<bool>(false, false, true, global2.a), global2.a))), select(vec4<bool>(all(vec3<bool>(true, true, false)), false, _wgslsmith_f_op_f32(-var_0.b) == -438f, var_0.a), vec4<bool>(all(vec4<bool>(global0.a, arg_1, global2.a, true)), any(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(true, false, global2.a, arg_1), global0.a)), true, !(var_0.a | global2.a)), select(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, global2.a, true), select(!vec4<bool>(global2.a, false, false, var_0.a), vec4<bool>(arg_1, false, global2.a, global2.a), 4294967295u != global0.d.x), select(!vec4<bool>(var_0.a, false, false, global2.a), select(vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(global0.a, false, arg_1, global2.a), vec4<bool>(false, global2.a, false, var_0.a)), vec4<bool>(var_0.a, false, arg_1, true)))));
    return ~(~(~vec4<u32>(~4294967295u, global0.e, reverseBits(1u), 0u << (var_0.e % 32u))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_add_u32(~1u, ~(~firstLeadingBit(global2.d.x) >> (_wgslsmith_dot_vec3_u32(~global2.d, vec3<u32>(global0.d.x, 10u, 47554u)) % 32u)));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(67927u, countOneBits(_wgslsmith_dot_vec4_u32(func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-839f, -496f, global0.b, 733f))), global2.c.x > global2.c.x, global0.c.x), ~vec4<u32>(4294967295u, 1u, 4294967295u, global0.d.x)))), 25u)];
    var var_1 = global1[_wgslsmith_index_u32(global2.d.x, 25u)];
    global0 = global1[_wgslsmith_index_u32(84317u, 25u)];
    let var_2 = global1[_wgslsmith_index_u32(min(1u, ~abs(~(global3.x | 83192u))), 25u)];
    return vec4<bool>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.c.x), vec2<i32>(2147483647i, 0i))) < var_1.c.x, true, var_2.a, (global3.x < arg_0) | all(!select(vec3<bool>(false, true, false), vec3<bool>(global2.a, var_2.a, false), false)));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = firstLeadingBit(vec4<u32>(global2.d.x, firstLeadingBit(4294967295u), 107480u, _wgslsmith_add_u32(4294967295u, ~global3.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1433f, global0.b) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b, -1383f))))), vec2<f32>(_wgslsmith_f_op_f32(global0.b - global2.b), -964f), !vec2<bool>(true || global2.a, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), global0.b)));
    let var_2 = func_2(45906u | global0.e);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~_wgslsmith_add_u32(~u_input.b, _wgslsmith_add_u32(global3.x, global3.x)) >> (((59780u >> (global0.d.x % 32u)) & 4294967295u) % 32u)), 25u)];
    let var_4 = -global0.c;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, var_1.x, 151f, global0.b) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, 330f, var_1.x, global0.b), vec4<f32>(-1304f, 1223f, -602f, -1566f), vec4<bool>(false, global2.a, true, var_2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1453f, -1000f, global0.b, global0.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, var_3.b, var_3.b, global2.b)))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -667f), global2.b, global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, global2.b, var_3.b, var_1.x))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = !func_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, global0.e, u_input.b)), ~global2.d), global2.d.x)).xxw;
    global1 = array<Struct_1, 25>();
    let var_1 = var_0.x;
    global2 = global1[_wgslsmith_index_u32(~4294967295u, 25u)];
    global1 = array<Struct_1, 25>();
    return global1[_wgslsmith_index_u32(~4294967295u, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(false, global0.b, abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), global2.c, vec2<i32>(global0.c.x, 27332i))), global2.d, _wgslsmith_sub_u32(abs(4294967295u), 26209u));
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, -893f, global2.b, -527f), vec4<f32>(global0.b, 616f, global2.b, global0.b)) - _wgslsmith_f_op_vec4_f32(func_1(false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-244f, global2.b, 1346f, global0.b) + vec4<f32>(923f, -982f, -1000f, global0.b))))), true);
    let var_1 = global1[_wgslsmith_index_u32(~34524u, 25u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.d.x, 4294967295u), select(global3.xx, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.e, 1u), max(~global0.d.zz, vec2<u32>(0u, global2.d.x) | var_1.d.zx)), any(vec2<bool>(true, true)))), 25u)];
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 25u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(global0.b - var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1084f)) + _wgslsmith_f_op_f32(sign(global0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), global0.b);
    var var_4 = Struct_1(any(!func_2(~0u).ww), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1133f, -392f, var_1.a))), ~global0.c, _wgslsmith_mod_vec3_u32(var_1.d, vec3<u32>(_wgslsmith_sub_u32(43304u, _wgslsmith_mult_u32(u_input.b, u_input.d)), 1u, ~_wgslsmith_sub_u32(global2.e, var_2.d.x))), ~1u);
    let var_5 = func_4(_wgslsmith_f_op_vec4_f32(func_1(true)), true);
    var var_6 = Struct_1(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.b)))), reverseBits(var_1.c), ~(~func_4(vec4<f32>(-1749f, 366f, 685f, 115f), false).d) >> (var_1.d % vec3<u32>(32u)), max(_wgslsmith_sub_u32(var_4.d.x, ~(u_input.d | 0u)), ~4244u));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d, vec2<i32>(var_4.c.x, -1i), ~4294967295u, ~_wgslsmith_div_u32(1802u, func_4(_wgslsmith_f_op_vec4_f32(func_1(false)), all(vec4<bool>(var_4.a, true, var_1.a, var_0.a))).d.x), -1000f);
}

