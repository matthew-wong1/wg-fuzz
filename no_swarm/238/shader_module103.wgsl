struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(62846u), Struct_2(1u), Struct_2(0u), Struct_2(9493u), Struct_2(7213u), Struct_2(17927u), Struct_2(0u), Struct_2(4294967295u), Struct_2(36583u), Struct_2(0u), Struct_2(25714u), Struct_2(40570u), Struct_2(4294967295u), Struct_2(8662u), Struct_2(1u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(0u), Struct_2(52286u), Struct_2(6792u), Struct_2(8628u), Struct_2(1635u));

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 28>;

var<private> global3: array<i32, 22> = array<i32, 22>(8962i, -34142i, -32082i, 2147483647i, 1i, -30363i, i32(-2147483648), -82084i, 1i, 0i, -1i, 1i, 0i, 1i, 29897i, 2147483647i, -63515i, -1i, 26852i, 12479i, 47597i, 0i);

var<private> global4: array<Struct_4, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    global2 = array<vec4<u32>, 28>();
    let var_0 = !select(!vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), select(vec3<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), any(vec2<bool>(true, true))), false);
    var var_1 = vec4<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(6764u, 1u, u_input.c, ~1u), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))), ~(~0u & _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(3514u, 28u)]))), countOneBits(firstTrailingBit(_wgslsmith_div_u32(reverseBits(u_input.a), ~49166u))), u_input.b.x, _wgslsmith_div_u32(max(66821u, _wgslsmith_dot_vec4_u32(vec4<u32>(32523u, u_input.b.x, u_input.d.x, 70176u), global2[_wgslsmith_index_u32(u_input.b.x, 28u)]) & 0u), (u_input.a | 21248u) | u_input.d.x));
    global3 = array<i32, 22>();
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(4294967295u, u_input.a) << (u_input.d % vec2<u32>(32u))), reverseBits(~(~var_1.zw))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1267f), _wgslsmith_f_op_f32(-511f + -1568f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-663f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-748f)) - _wgslsmith_f_op_f32(-593f * -696f))), -676f, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1423f + 1989f), -1209f, !var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f + 1743f)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_3 {
    var var_0 = vec2<u32>(4294967295u, 4294967295u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(182f + 1004f)))));
    var var_2 = ~(~(~(~firstTrailingBit(arg_1))));
    let var_3 = Struct_1(any(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), 367f))), !(true & (true | any(vec3<bool>(false, false, true)))), ~_wgslsmith_add_i32(arg_1, _wgslsmith_mod_i32(arg_1, arg_1)));
    global2 = array<vec4<u32>, 28>();
    return Struct_3(var_1.x, var_1.x, var_3.a, _wgslsmith_div_vec3_i32(firstTrailingBit(~(-vec3<i32>(arg_1, 8604i, 5606i))), abs(_wgslsmith_div_vec3_i32(max(vec3<i32>(var_3.e, 42093i, var_3.e), vec3<i32>(var_3.e, var_3.e, arg_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(-66814i, -1i, var_3.e), vec3<i32>(-2147483647i, -8890i, global3[_wgslsmith_index_u32(5679u, 22u)]))))), vec3<bool>(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_3.d, false, var_3.a, false), var_3.d)), var_3.d || false, var_3.d));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_4(4294967295u, func_2(~abs(global2[_wgslsmith_index_u32(50071u, 28u)]) >> (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(34837u, 28u)] | vec4<u32>(0u, 4294967295u, arg_0.x, 0u), vec4<u32>(arg_0.x, 0u, u_input.a, 1u)), 28u)] % vec4<u32>(32u)), -10252i));
    let var_1 = -reverseBits(min(-select(vec4<i32>(-53067i, 2147483647i, global3[_wgslsmith_index_u32(14887u, 22u)], -2147483647i), vec4<i32>(35037i, 36717i, 85476i, -1915i), vec4<bool>(false, false, var_0.b.c, false)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_0.b.d.x, global3[_wgslsmith_index_u32(var_0.a, 22u)], 2147483647i)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.c | arg_0.x, 22u)];
    let var_3 = var_0;
    let var_4 = Struct_1(false, ~_wgslsmith_sub_u32(1u, 0u), var_3.b.b, func_2(~_wgslsmith_add_vec4_u32(~global2[_wgslsmith_index_u32(27018u, 28u)], ~vec4<u32>(arg_0.x, var_0.a, 4294967295u, u_input.b.x)), firstTrailingBit(abs(2147483647i))).c, _wgslsmith_add_i32(-2147483647i, 2147483647i));
    return Struct_1(false, 62453u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))))), var_0.b.c, var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(reverseBits(332u), 21u)];
    global3 = array<i32, 22>();
    var var_1 = vec3<bool>(!all(vec3<bool>(arg_1.x && arg_1.x, true, false)), true, func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(6559u), u_input.d.x, _wgslsmith_add_u32(19870u, 50427u), ~var_0.a), ~global2[_wgslsmith_index_u32(arg_0.b, 28u)]), 1i).c);
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(min(0u, var_0.a), var_0.a), abs(var_0.a))), 22u)];
    let var_3 = func_1(_wgslsmith_mod_vec2_u32(select(~_wgslsmith_add_vec2_u32(vec2<u32>(19256u, arg_0.b), vec2<u32>(62345u, arg_0.b)), u_input.d, vec2<bool>(!var_1.x, false)), select(u_input.b, _wgslsmith_add_vec2_u32(abs(u_input.d), vec2<u32>(u_input.c, var_2.a)), var_1.xx)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(1u, ~u_input.b.x, any(vec3<bool>(true, true, all(vec3<bool>(false, true, true)))));
    var var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(global3[_wgslsmith_index_u32(var_0, 22u)] | global3[_wgslsmith_index_u32(u_input.d.x, 22u)], 1i, max(0i, 0i), global3[_wgslsmith_index_u32(var_0 | var_0, 22u)]))), vec4<i32>(-2147483647i, _wgslsmith_div_i32(abs(global3[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(~0u, 22u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(var_0, 22u)], -2147483647i, global3[_wgslsmith_index_u32(33506u, 22u)]), vec3<i32>(global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(var_0, 22u)], 2147483647i)))), global3[_wgslsmith_index_u32(var_0, 22u)], -1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(958f)))), _wgslsmith_f_op_f32(func_4(func_1(u_input.b), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), firstTrailingBit(var_1.zzx), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(537f, _wgslsmith_f_op_f32(-648f - 1269f), _wgslsmith_f_op_f32(round(-1000f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, -1523f, -458f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(600f, -1142f, 431f) - vec3<f32>(-751f, 2080f, -238f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1391f, -1115f, 1000f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f)), 926f, -874f)));
    let var_3 = ~1u;
    var var_4 = select(!func_2(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_3, 0u)), ~0u, var_0, var_3), 1i).e.yx, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, func_2(vec4<u32>(20349u, var_0, 1u, 4294967295u), var_1.x).c), !func_2(vec4<u32>(u_input.c, var_0, 23803u, var_3), 1i).e.yx), true), select(vec2<bool>((var_1.x >> (4294967295u % 32u)) >= (global3[_wgslsmith_index_u32(99219u, 22u)] >> (4294967295u % 32u)), func_2(vec4<u32>(43164u, 4294967295u, 4294967295u, var_3), 45277i).e.x || true), vec2<bool>(true, true), select(vec2<bool>(var_1.x < global3[_wgslsmith_index_u32(4294967295u, 22u)], any(vec2<bool>(false, false))), vec2<bool>(true, true), true)));
    global3 = array<i32, 22>();
    let var_5 = var_4.x;
    var var_6 = ~(~func_1(vec2<u32>(4294967295u << (var_3 % 32u), ~17840u)).b);
    let x = u_input.a;
    s_output = StorageBuffer(58773u, ~reverseBits(global2[_wgslsmith_index_u32(~(~57563u), 28u)]), var_1.wxw, _wgslsmith_f_op_vec2_f32(vec2<f32>(-606f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - 811f), var_2.x)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x)), ~firstLeadingBit(~(~vec3<i32>(-1i, global3[_wgslsmith_index_u32(26094u, 22u)], -55445i))));
}

