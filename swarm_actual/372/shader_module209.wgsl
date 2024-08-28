struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: vec3<i32> = vec3<i32>(18272i, -34009i, 2147483647i);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 1u), vec2<i32>(-31523i, 155i), 2147483647i);

var<private> global3: vec4<u32> = vec4<u32>(0u, 0u, 1u, 59974u);

var<private> global4: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(20818u, 4294967295u, 4294967295u, 38532u), vec4<u32>(53208u, 4294967295u, 36716u, 27831u), vec4<u32>(61111u, 0u, 57836u, 16018u), vec4<u32>(4294967295u, 1u, 1u, 207u), vec4<u32>(21372u, 124224u, 84559u, 39987u), vec4<u32>(0u, 78577u, 12525u, 33191u), vec4<u32>(4294967295u, 1u, 1u, 18659u), vec4<u32>(4294967295u, 4294967295u, 87u, 33076u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(57479u, 0u, 0u, 1u), vec4<u32>(4294967295u, 49492u, 45864u, 5991u), vec4<u32>(0u, 45337u, 30964u, 32184u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(97124u, 1u, 11134u, 71216u), vec4<u32>(28976u, 1u, 19579u, 33237u), vec4<u32>(97854u, 0u, 21437u, 67117u), vec4<u32>(1u, 50829u, 4500u, 62849u), vec4<u32>(4294967295u, 40527u, 4294967295u, 0u), vec4<u32>(37423u, 22063u, 8585u, 0u), vec4<u32>(31362u, 19443u, 11836u, 51130u), vec4<u32>(9455u, 4294967295u, 2336u, 46812u), vec4<u32>(0u, 38089u, 1u, 68237u), vec4<u32>(48481u, 1u, 4294967295u, 1266u), vec4<u32>(37129u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(4760u, 1u, 33801u, 1u), vec4<u32>(14267u, 0u, 1u, 104146u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool) -> Struct_2 {
    return Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(4294967295u, u_input.b, 51467u), vec3<u32>(63904u, global2.a.x, global3.x)), ~firstTrailingBit(vec3<u32>(4294967295u, 39329u, 56563u))), global3.x, 56591u));
}

fn func_3() -> vec3<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_mod_i32(global1.x, -abs(15843i));
    var var_2 = global2.b.x;
    let var_3 = Struct_2(global3.zzw);
    let var_4 = any(select(vec3<bool>(true, all(vec4<bool>(var_0, true, true, var_0)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]) < _wgslsmith_f_op_f32(step(-606f, -1000f))), !select(select(vec3<bool>(false, false, false), vec3<bool>(var_0, false, var_0), vec3<bool>(false, true, false)), !vec3<bool>(false, var_0, false), vec3<bool>(true, true, true)), select(select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, true, false), vec3<bool>(true, var_0, false), var_0), vec3<bool>(true, true, true)), vec3<bool>(!var_0, false, any(vec2<bool>(var_0, true))), true)));
    return global3.yxx;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_1(global2.a, -_wgslsmith_mod_vec2_i32(-firstLeadingBit(global1.yy), ~vec2<i32>(arg_0, arg_0) | vec2<i32>(-1i, arg_0)), -_wgslsmith_clamp_i32(-(~(-63261i)), arg_0, 0i));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = 1f;
    global3 = vec4<u32>(~arg_2.x, 56883u, reverseBits(67567u), abs(abs(0u)));
    return _wgslsmith_mod_vec3_u32(arg_2, (vec3<u32>(arg_2.x, 1u << (arg_2.x % 32u), ~38156u) ^ global2.a) | _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(u_input.b), var_0.a.x & 1u, 4294967295u), vec3<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 83070u, var_0.a.x), vec3<u32>(101532u, var_0.a.x, 0u)), arg_2.x)));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global2 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(abs(max(global3.zxw, vec3<u32>(0u, global2.a.x, 0u))), func_4(global2.b.x, ~global4[_wgslsmith_index_u32(global3.x, 27u)], func_3())), firstLeadingBit(global2.a)), -vec2<i32>(-_wgslsmith_div_i32(-8012i, -8603i), 31162i), global1.x);
    var var_0 = select(true, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), true))), all(select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, false, true), false)));
    var var_1 = ~vec3<u32>(u_input.a, _wgslsmith_add_u32(0u, global2.a.x), _wgslsmith_mult_u32(global3.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, global2.a.x), vec3<u32>(global3.x, 4294967295u, 1u)), 0u)));
    global4 = array<vec4<u32>, 27>();
    let var_2 = Struct_1(~(~abs(vec3<u32>(1u, var_1.x, 20521u))), reverseBits(vec2<i32>(global2.b.x, -24586i)), 1i);
    return select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), select(select(vec4<bool>(false, true, all(vec2<bool>(false, false)), any(vec2<bool>(true, true))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, select(true, true, false), 26261u <= global3.x)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), any(vec2<bool>(true, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(global2.a, firstLeadingBit(global2.b), ~(~(-max(global1.x, 16413i))));
    global3 = abs(min(~(vec4<u32>(arg_0.a.x, global2.a.x, global2.a.x, 4294967295u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(20197u, 38838u, 75744u, 39680u), global4[_wgslsmith_index_u32(0u, 27u)]) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, 1u, 0u, global2.a.x))));
    var var_1 = arg_0;
    var var_2 = ~vec4<i32>(~(-global2.b.x) | global2.b.x, 0i, 1i, _wgslsmith_sub_i32(-42522i, var_0.c));
    var var_3 = arg_0;
    return Struct_1(min(_wgslsmith_clamp_vec3_u32(~arg_0.a, _wgslsmith_clamp_vec3_u32(min(var_0.a, vec3<u32>(26183u, 16961u, 51497u)), reverseBits(var_1.a), min(global3.wyz, global3.zxw)), vec3<u32>(62025u, global2.a.x ^ 1u, _wgslsmith_mult_u32(global2.a.x, var_1.a.x))), vec3<u32>(var_1.a.x, ~_wgslsmith_clamp_u32(44085u, 1u, var_1.a.x), func_1(global1.x > var_2.x).a.x)), ~(vec2<i32>(1491i, -global1.x) & (vec2<i32>(-1i, global1.x) ^ var_0.b)), -23494i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2((_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.x, global3.x, u_input.a), global3.zzz, global3.ywy) >> (global3.xxz % vec3<u32>(32u))) | global2.a);
    let var_1 = ~(~vec4<u32>(1u >> (u_input.a % 32u), ~1u, _wgslsmith_add_u32(global2.a.x, 4294967295u), global3.x << (var_0.a.x % 32u)) & global4[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 27u)]);
    let var_2 = ~_wgslsmith_add_u32(var_0.a.x << (0u % 32u), ~reverseBits(var_0.a.x) | abs(max(var_1.x, 0u)));
    let var_3 = func_5(func_1(!(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 31u)])) == _wgslsmith_div_f32(-412f, global0[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(266f, -225f, global0[_wgslsmith_index_u32(var_0.a.x, 31u)], global0[_wgslsmith_index_u32(var_2, 31u)]) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(var_2, 31u)], 491f, -188f)))), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a.x, 31u)] + 368f), global0[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(f32(-1f) * -194f)), !func_2(global0[_wgslsmith_index_u32(12850u, 31u)])))));
    let var_4 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.x, 0i), (-max(1i, global1.x) ^ global2.b.x) & -firstTrailingBit(~(-1i)), ~_wgslsmith_add_i32(-max(global1.x, -26783i), var_3.b.x));
    var var_5 = abs(min(vec4<u32>(0u, 18790u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, 42705u, global3.x, var_0.a.x)), abs(global4[_wgslsmith_index_u32(var_2, 27u)])), global3.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1u, var_0.a.x, global3.x), vec4<u32>(func_4(var_3.c, vec4<u32>(0u, 13677u, global3.x, 104638u), vec3<u32>(34339u, var_2, var_0.a.x)).x, 4294967295u, 1u, var_3.a.x))));
    let var_6 = Struct_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_5.x, 6808u), select(vec3<u32>(19983u, 31813u, 39754u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 63389u, global2.a.x), vec3<u32>(55882u, var_2, var_2)), vec3<bool>(false, true, true))) | abs(func_5(var_0, vec4<f32>(398f, -1000f, global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(var_1.x, 31u)])).a | ~vec3<u32>(38687u, 0u, var_5.x)));
    let var_7 = _wgslsmith_sub_i32(global2.c, global1.x) != var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], 529f, global0[_wgslsmith_index_u32(var_1.x, 31u)], 1633f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_0.a.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2378f, global0[_wgslsmith_index_u32(4294967295u, 31u)], 1000f, global0[_wgslsmith_index_u32(28013u, 31u)]))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(59124u, 31u)], global0[_wgslsmith_index_u32(var_2, 31u)], 951f, global0[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 31u)], 910f, global0[_wgslsmith_index_u32(0u, 31u)]))))), 0i, ~var_3.c);
}

