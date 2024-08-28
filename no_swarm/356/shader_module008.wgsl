struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(32612i, false, 1754f), Struct_1(-1i, true, -301f), Struct_1(i32(-2147483648), false, -508f), Struct_1(0i, false, 2109f), Struct_1(1i, false, 914f), Struct_1(-2634i, true, 343f), Struct_1(-1887i, false, -640f), Struct_1(-1i, false, -1333f), Struct_1(35624i, false, 948f), Struct_1(0i, true, 1278f), Struct_1(1i, true, 1432f), Struct_1(i32(-2147483648), true, 142f), Struct_1(-22702i, false, 456f), Struct_1(-1i, true, -116f), Struct_1(2147483647i, false, 247f), Struct_1(1i, true, 512f), Struct_1(-42241i, false, 738f), Struct_1(-30993i, false, 148f), Struct_1(-312i, false, 1677f), Struct_1(0i, true, 581f), Struct_1(2147483647i, true, 1099f), Struct_1(2147483647i, true, 317f), Struct_1(-1i, true, -197f), Struct_1(43288i, false, -2327f), Struct_1(0i, false, -1000f), Struct_1(0i, false, 103f), Struct_1(65460i, true, 1000f), Struct_1(28111i, true, -619f), Struct_1(16787i, true, -503f), Struct_1(41776i, true, 1437f));

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: vec2<i32>;

var<private> global4: array<f32, 24> = array<f32, 24>(-397f, 506f, 1060f, -423f, 790f, 1584f, 1617f, 376f, -1638f, 372f, 1180f, -108f, -537f, 290f, -708f, -485f, 336f, 1000f, 211f, -101f, -1204f, -169f, 256f, -313f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> vec4<i32> {
    global1 = ~(~vec2<u32>(_wgslsmith_sub_u32(~global1.x, 49790u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, u_input.e, u_input.b), vec4<u32>(u_input.e, global1.x, global1.x, global1.x)))));
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(global2.b, arg_0.b), vec2<bool>(true, arg_0.b), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true))), select(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(global2.b, false), false), select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, false), global2.b), arg_0.b && global2.b), select(vec2<bool>(true, true), !vec2<bool>(arg_0.b, true), arg_0.b != true), vec2<bool>(select(false, true, true), global2.b))), !select(select(select(vec2<bool>(true, false), vec2<bool>(global2.b, false), global2.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(global2.b, false), true), vec2<bool>(arg_0.b, true)), select(!vec2<bool>(arg_0.b, global2.b), !vec2<bool>(arg_0.b, true), !vec2<bool>(false, global2.b)), select(select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global2.b, false)), !vec2<bool>(arg_0.b, false))), !vec2<bool>(false, global2.c < _wgslsmith_f_op_f32(-arg_0.c)));
    global1 = ~(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(38377u, 23894u, u_input.e, 41721u), ~vec4<u32>(global1.x, 19643u, u_input.d, 4294967295u))) ^ (_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(global1.x, global1.x)) >> (~(vec2<u32>(global1.x, 4294967295u) | vec2<u32>(1u, 21002u)) % vec2<u32>(32u))));
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.d << (u_input.d % 32u), ~global1.x), global1.x) >> (vec2<u32>(min(28762u, _wgslsmith_add_u32(global1.x, 0u)), max(_wgslsmith_sub_u32(global1.x, 0u), global1.x)) % vec2<u32>(32u)), abs(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 8602u), vec2<u32>(4294967295u, 0u)) ^ vec2<u32>(u_input.c, global1.x))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-global2.a, arg_2.x), -abs(_wgslsmith_div_i32(global2.a, -2147483647i))), !((_wgslsmith_add_u32(global1.x, global1.x) == 1u) & true), arg_0.c);
    return vec4<i32>(max(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-arg_2.yy, vec2<i32>(u_input.a, 30254i) << (vec2<u32>(u_input.d, global1.x) % vec2<u32>(32u))), _wgslsmith_sub_i32(-1i, 2147483647i)), abs(firstLeadingBit(1i))), firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_2, arg_2)), _wgslsmith_dot_vec3_i32(arg_2, _wgslsmith_div_vec3_i32(arg_2, (arg_2 | arg_2) << (~vec3<u32>(global1.x, global1.x, u_input.e) % vec3<u32>(32u)))), firstLeadingBit(1i));
}

fn func_4(arg_0: vec4<i32>) -> vec4<bool> {
    return !vec4<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, global2.b, global2.b))), true, any(vec3<bool>(global3.x >= u_input.a, false, true)), select(global2.b, true, any(vec2<bool>(global2.b, global2.b))));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec3<bool>(true, any(func_4(func_3(Struct_1(-2147483647i, global2.b, global4[_wgslsmith_index_u32(u_input.d, 24u)]), -2147483647i, ~vec3<i32>(global2.a, 48076i, u_input.a)))), false & any(func_4(min(vec4<i32>(-37551i, -2147483647i, 31463i, -1i), vec4<i32>(global2.a, -2147483647i, global2.a, u_input.a)))));
    let var_1 = !select(!global2.b, global2.b, global2.b);
    var_0 = !select(vec3<bool>(!func_4(vec4<i32>(-48715i, 0i, u_input.a, u_input.a)).x, true, any(vec3<bool>(global2.b, global2.b, true))), !select(vec3<bool>(true, true, true), vec3<bool>(global2.b, var_1, var_0.x), vec3<bool>(global2.b, global2.b, var_1)), !all(select(vec4<bool>(var_1, global2.b, var_1, var_0.x), vec4<bool>(var_0.x, true, global2.b, false), true)));
    global4 = array<f32, 24>();
    let var_2 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, -2147483647i ^ global3.x) | _wgslsmith_mult_vec2_i32(vec2<i32>(global2.a, 11401i), ~vec2<i32>(-1i, -20819i)), vec2<i32>(1i, ~global3.x)));
    return vec2<bool>(global2.b, ((i32(-1i) * -12214i) == _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 58447i, -8617i), _wgslsmith_div_vec3_i32(vec3<i32>(59151i, 25626i, u_input.a), vec3<i32>(21615i, 6481i, var_2.x)))) && any(func_4(-vec4<i32>(global2.a, -13848i, global2.a, global3.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = select(!vec4<bool>(_wgslsmith_add_u32(u_input.b, 2496u) > reverseBits(64784u), true | !global2.b, arg_0.b, true), vec4<bool>(true, true, true, arg_3.b), all(select(vec2<bool>(arg_3.b | false, true | arg_0.b), !func_2(), arg_0.b)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f - 297f)) * 1000f);
    let var_2 = Struct_1(arg_3.a, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + _wgslsmith_f_op_f32(-arg_2))))));
    let var_3 = 0i | abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.a, arg_0.a) ^ 0i, 1i));
    global1 = ~vec2<u32>(~0u, 1u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c, arg_0.c))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -717f), true));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(global1.x << (_wgslsmith_div_u32(global1.x, global1.x) % 32u), 26235u), firstLeadingBit(37565u), ~4071u), abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(global1.x, u_input.b, 398u, 38577u)), ~vec4<u32>(global1.x, u_input.d, 58058u, 0u))));
    global0 = array<Struct_1, 30>();
    global4 = array<f32, 24>();
    global0 = array<Struct_1, 30>();
    var var_1 = 1000f;
    return Struct_1(global3.x, false, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(21628u, 30u)], 0i, global4[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(select(global1.x, global1.x, global2.b), 30u)]))), global2.c, false)), all(!func_4(vec4<i32>(u_input.a, -1i, 2147483647i, -11922i)).zyy) && true);
    var var_1 = global2.a << (_wgslsmith_sub_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(global1.x, 27474u), u_input.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(global1.x, 0u)), firstTrailingBit(global1.x)) & 1u) % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -690f), global2.c, global4[_wgslsmith_index_u32(u_input.d | global1.x, 24u)]) * vec3<f32>(2217f, _wgslsmith_f_op_f32(step(1415f, var_0.c)), global2.c)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, var_0.c, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2011f, -413f, 542f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(6258u, 24u)], global4[_wgslsmith_index_u32(50418u, 24u)], var_0.c), vec3<f32>(var_0.c, global2.c, var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1959f, global4[_wgslsmith_index_u32(44247u, 24u)], -1000f)))))));
    let var_3 = _wgslsmith_f_op_f32(-402f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f) + _wgslsmith_f_op_f32(-global2.c)) - -990f));
    global2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(196f, reverseBits(~vec3<u32>(global1.x, u_input.e, _wgslsmith_mult_u32(global1.x, 4294967295u))), abs(var_0.a), _wgslsmith_sub_vec3_i32(~vec3<i32>(-global3.x, global2.a, 92034i), ~((vec3<i32>(8456i, 0i, -8331i) | vec3<i32>(-46515i, 31440i, global2.a)) >> (~vec3<u32>(15471u, 0u, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1648f, 163f, global2.c, 1000f)))))));
}

