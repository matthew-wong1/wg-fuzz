struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-299f, 329f, 241f);

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(44456u, 4294967295u, 7537u, 61279u), vec4<u32>(4294967295u, 39290u, 4294967295u, 126143u), vec4<u32>(1u, 81847u, 23570u, 4294967295u), vec4<u32>(1u, 38203u, 51529u, 0u), vec4<u32>(0u, 0u, 7210u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = vec3<bool>(true, !all(!(!vec4<bool>(arg_0, true, arg_0, false))), arg_0);
    var_0 = !vec3<bool>(false, !all(vec3<bool>(false, arg_0, false)) || !arg_0, any(select(!vec3<bool>(false, arg_0, true), vec3<bool>(true, var_0.x, false), !vec3<bool>(true, false, arg_0))));
    return u_input.e.x & u_input.e.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: u32) -> Struct_4 {
    return Struct_4(Struct_2(~(~(52041u << (arg_3 % 32u))), select(true, arg_1, false)), Struct_3(Struct_1(-u_input.d, global2[_wgslsmith_index_u32((arg_3 >> (4294967295u % 32u)) >> (max(u_input.e.x, u_input.e.x) % 32u), 5u)], arg_0.x), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 1i, -33358i), vec3<i32>(-28726i, -44792i, u_input.d) >> (vec3<u32>(arg_3, 1u, u_input.e.x) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(arg_3, 5u)], !all(arg_0))), Struct_3(Struct_1(_wgslsmith_sub_i32(-8263i, -58416i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3, func_3(arg_2)), 5u)], true), Struct_1(i32(-1i) * -13775i, vec4<u32>(1u, ~26957u, arg_3, firstTrailingBit(arg_3)), true)));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    global1 = any(vec4<bool>(true, (arg_0.c.a.c || true) && false, true, true));
    let var_0 = func_2(!(!vec4<bool>(true, arg_0.c.a.c, all(vec3<bool>(arg_0.a.b, false, arg_0.a.b)), !arg_0.a.b)), arg_0.c.b.c, true, _wgslsmith_sub_u32(1u, ~(~(~u_input.e.x)))).c.a;
    let var_1 = arg_0;
    global1 = any(select(select(select(vec3<bool>(var_0.c, var_1.b.b.c, var_1.b.b.c), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), var_0.c), arg_0.c.a.c), select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.c.a.c, false), var_0.c), any(select(vec2<bool>(arg_0.b.a.c, var_0.c), vec2<bool>(true, false), var_1.b.a.c))), !vec3<bool>(arg_0.c.a.a < var_1.b.a.a, any(vec2<bool>(true, arg_0.a.b)), true), !var_0.c));
    var var_2 = min(~vec3<u32>(44153u, reverseBits(38765u) ^ func_3(false), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x) ^ 0u), countOneBits(vec3<u32>(u_input.e.x, countOneBits(var_0.b.x) ^ var_1.a.a, ~0u)));
    return Struct_2(~u_input.e.x, false);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_4(func_4(func_2(vec4<bool>(true, true, any(vec2<bool>(false, true)), true), true, all(vec4<bool>(true, true, true, true)), 4294967295u), u_input.e.x), func_2(!vec4<bool>(true, true, func_2(vec4<bool>(false, true, false, true), false, false, 36153u).c.a.c, true), true, true, 1u).c, Struct_3(func_2(vec4<bool>(true, true, true, true), true, 0i == -arg_2.x, ~_wgslsmith_add_u32(u_input.e.x, 4294967295u)).c.b, Struct_1(i32(-1i) * -arg_0, vec4<u32>(func_4(Struct_4(Struct_2(arg_1.x, true), Struct_3(Struct_1(arg_3, vec4<u32>(u_input.e.x, 68713u, 4294967295u, 14910u), true), Struct_1(1i, vec4<u32>(u_input.e.x, u_input.e.x, arg_1.x, 12605u), true)), Struct_3(Struct_1(arg_3, global2[_wgslsmith_index_u32(arg_1.x, 5u)], true), Struct_1(2147483647i, global2[_wgslsmith_index_u32(1u, 5u)], true))), 37827u).a, 107090u, u_input.e.x, _wgslsmith_mod_u32(19989u, u_input.e.x)), !(-1976f == global0.x))));
    let var_1 = var_0.c;
    global1 = var_1.a.c;
    var var_2 = _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(arg_2.yy, arg_2.wy) & firstTrailingBit(~vec2<i32>(-1i, -18289i)), firstTrailingBit(-(vec2<i32>(-1i) * -vec2<i32>(39447i, 1i))));
    global2 = array<vec4<u32>, 5>();
    return Struct_3(var_1.a, var_1.a);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = func_1(-21973i, ~abs(vec2<u32>(func_4(Struct_4(Struct_2(69684u, arg_2.a.c), Struct_3(Struct_1(u_input.a, arg_1.b.b, arg_1.a.c), Struct_1(arg_1.a.a, vec4<u32>(arg_2.a.b.x, 1u, u_input.e.x, 12836u), false)), arg_1), u_input.e.x).a, min(u_input.e.x, arg_2.a.b.x))), _wgslsmith_mult_vec4_i32(-vec4<i32>(countOneBits(0i), 1i, -1i, -2147483647i), max(firstTrailingBit(vec4<i32>(u_input.d, arg_2.a.a, arg_2.a.a, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_1.a.a, -40949i, 52826i), vec4<i32>(arg_2.a.a, 2147483647i, u_input.c, u_input.a))) ^ reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b.a, u_input.b, arg_2.b.a, -1i), vec4<i32>(1i, arg_1.b.a, 37612i, arg_1.b.a), vec4<i32>(arg_2.b.a, arg_1.b.a, arg_2.b.a, arg_1.a.a)))), -13121i).b;
    global2 = array<vec4<u32>, 5>();
    global2 = array<vec4<u32>, 5>();
    var var_1 = func_4(func_2(!(!select(vec4<bool>(true, arg_3, var_0.c, true), vec4<bool>(arg_3, arg_2.a.c, arg_3, arg_3), vec4<bool>(arg_2.b.c, false, var_0.c, false))), !(!arg_2.b.c), arg_2.b.c, _wgslsmith_dot_vec3_u32(var_0.b.xwz, _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_1.a.b.x, 1u, var_0.b.x), vec3<u32>(var_0.b.x, arg_1.a.b.x, arg_1.b.b.x)), firstLeadingBit(vec3<u32>(1u, 0u, 1u))))), ~firstLeadingBit(abs(4294967295u) >> (~u_input.e.x % 32u)));
    var var_2 = vec4<bool>(true, true, arg_3, u_input.d >= ~reverseBits(1i));
    return func_2(select(vec4<bool>(false, !arg_1.b.c && arg_1.a.c, true, var_2.x), vec4<bool>(var_2.x, all(vec2<bool>(false, false)), !(true == var_1.b), true), vec4<bool>(var_1.b, arg_1.a.c, true, arg_2.a.c)), var_1.b, var_2.x, var_0.b.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(abs(-268f))))))), func_1(u_input.c, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.e.x), vec2<u32>(u_input.e.x, 66730u)), select(vec2<u32>(0u, 64333u), u_input.e, true)), ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.d, u_input.c, u_input.b, -1i), vec4<i32>(u_input.b, -2147483647i, -2147483647i, 2147483647i) ^ vec4<i32>(-1i, -31649i, -15438i, u_input.a)), u_input.b), Struct_3(Struct_1(u_input.a, vec4<u32>(~106905u, u_input.e.x, u_input.e.x, func_2(vec4<bool>(true, false, true, false), true, false, 13938u).b.a.b.x), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), Struct_1(u_input.a, ~global2[_wgslsmith_index_u32(u_input.e.x, 5u)] | ~global2[_wgslsmith_index_u32(u_input.e.x, 5u)], false)), func_1(2147483647i, u_input.e, reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, 36518i, -28484i), vec4<i32>(u_input.a, 0i, 2147483647i, -22824i)) << (global2[_wgslsmith_index_u32(~u_input.e.x, 5u)] % vec4<u32>(32u))), 1i).b.c);
    let var_1 = global0.x;
    global2 = array<vec4<u32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(floor(2036f)))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-495f, var_2, 940f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, global0.x, var_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(592f, var_2, global0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 307f, -517f) * vec3<f32>(1656f, var_2, global0.x)))))));
    let var_3 = func_2(select(!(!vec4<bool>(true, true, false, var_0.b)), !select(select(vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(false, true, var_0.b, var_0.b), vec4<bool>(true, var_0.b, false, var_0.b)), var_0.b), all(!vec2<bool>(false, var_0.b))), !(var_0.b != any(!vec2<bool>(var_0.b, var_0.b))), !func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * _wgslsmith_div_f32(global0.x, var_2)), func_2(vec4<bool>(var_0.b, true, var_0.b, true), var_0.b, true, 0u >> (0u % 32u)).c, func_2(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), var_0.b, func_4(Struct_4(Struct_2(0u, var_0.b), Struct_3(Struct_1(u_input.a, global2[_wgslsmith_index_u32(var_0.a, 5u)], var_0.b), Struct_1(u_input.d, global2[_wgslsmith_index_u32(42447u, 5u)], var_0.b)), Struct_3(Struct_1(1i, vec4<u32>(89898u, 0u, 9656u, u_input.e.x), true), Struct_1(u_input.d, vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 0u), var_0.b))), 13038u).b, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.e.x, 5u)], vec4<u32>(22129u, 4294967295u, 596u, 45714u))).b, var_0.b).b, 18114u);
    var_0 = func_4(Struct_4(var_3.a, Struct_3(Struct_1(u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 10176u, u_input.e.x), var_3.b.b.b), var_0.b | var_0.b), func_2(vec4<bool>(true, true, true, true), true, all(vec2<bool>(var_0.b, true)), _wgslsmith_sub_u32(var_3.a.a, 4294967295u)).b.a), func_2(!vec4<bool>(false, var_3.c.b.c, false, true), (u_input.e.x | 15256u) < u_input.e.x, var_3.b.a.b.x <= func_5(2566f, Struct_3(Struct_1(var_3.b.a.a, global2[_wgslsmith_index_u32(4294967295u, 5u)], false), var_3.b.a), var_3.c, var_0.b).a, var_0.a).c), _wgslsmith_mod_u32(4294967295u, var_3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a.a, var_3.c.b.b.wz);
}

