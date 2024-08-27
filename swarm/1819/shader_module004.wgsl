struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 32> = array<bool, 32>(false, false, true, false, true, true, false, true, false, false, false, true, true, true, false, true, false, false, false, true, false, true, true, true, true, false, false, true, true, true, false, false);

var<private> global2: array<vec3<u32>, 25>;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    global2 = array<vec3<u32>, 25>();
    global1 = array<bool, 32>();
    var var_0 = Struct_1(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(24045u, 32u)] && global0.b, true), select(select(vec3<bool>(false, true, global0.a.x), global0.a, global0.a), global3.a, global3.a), global0.a), vec3<bool>(false, true, false), vec3<bool>(!all(global0.a), true, false)), true, vec3<f32>(_wgslsmith_f_op_f32(max(global3.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(abs(global0.c.x)))))), global0.c.x, -1318f), global0.d);
    let var_1 = Struct_1(var_0.a, any(!vec4<bool>(false, true, false, 268f != var_0.c.x)), global0.c, global0.d);
    let var_2 = var_1;
    return any(var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = arg_0;
    let var_1 = -2567f >= _wgslsmith_f_op_f32(select(-1722f, _wgslsmith_f_op_f32(floor(arg_0.c.x)), !(!any(vec4<bool>(true, arg_1, false, global1[_wgslsmith_index_u32(4294967295u, 32u)])))));
    global2 = array<vec3<u32>, 25>();
    let var_2 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, ~4294967295u), select(u_input.b.xx, vec2<u32>(u_input.a, u_input.a), global3.a.x), any(vec3<bool>(false, true, global0.b)) & true), vec2<u32>(_wgslsmith_mod_u32(0u, ~_wgslsmith_mod_u32(49598u, 4294967295u)), ~(~72159u)));
    var var_3 = arg_1;
    return !(-abs(_wgslsmith_add_i32(-1i, arg_0.d.x)) >= 41484i);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(-global0.c.x)));
    var var_1 = !vec2<bool>(true, func_4(arg_0, func_3(), firstLeadingBit(_wgslsmith_add_i32(global3.d.x, -2147483647i))));
    global2 = array<vec3<u32>, 25>();
    var var_2 = var_1.x;
    var var_3 = arg_1;
    return Struct_1(select(global3.a, vec3<bool>(all(!vec4<bool>(global0.b, false, true, false)), any(!vec3<bool>(var_1.x, true, arg_0.b)), func_3()), global0.b), 4294967295u != u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, arg_0.c.x, -1000f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.c + vec3<f32>(-828f, arg_0.c.x, -988f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c) + _wgslsmith_f_op_vec3_f32(-global3.c)), true))), arg_0.d);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), 386f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(trunc(-1249f))), global3.c.x) - vec4<f32>(-553f, -1797f, -1399f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.c.x * global0.c.x))), _wgslsmith_f_op_f32(global0.c.x - -1000f))));
    global2 = array<vec3<u32>, 25>();
    global2 = array<vec3<u32>, 25>();
    var var_1 = Struct_1(vec3<bool>(true == global0.a.x, !(!(global3.a.x || true)), select(arg_1.x != ~77835u, global0.a.x, func_4(arg_2, !global3.b, u_input.c))), (-_wgslsmith_div_i32(37609i, arg_0) >= _wgslsmith_sub_i32(-11732i, 12561i)) | true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(-func_2(Struct_1(vec3<bool>(true, true, global0.a.x), false, global0.c, global0.d), vec2<u32>(1u, arg_1.x), global3.c.x).c.x), _wgslsmith_div_f32(-290f, _wgslsmith_f_op_f32(f32(-1f) * -154f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -167f, -1000f))), false && arg_2.b)), vec2<i32>(0i, _wgslsmith_add_i32(~u_input.c, _wgslsmith_mod_i32(2147483647i, firstTrailingBit(-2951i)))));
    let var_2 = func_2(func_2(func_2(Struct_1(select(global0.a, vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)], global0.a.x), true), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 32u)], vec3<f32>(global3.c.x, global0.c.x, var_0.x), vec2<i32>(-29139i, u_input.c) & vec2<i32>(arg_3.x, -10635i)), min(vec2<u32>(39295u, 0u), ~arg_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(499f - 204f)))), arg_1, 391f), vec2<u32>(countOneBits(u_input.a ^ 1u), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1327f, global0.c.x))))));
    return func_2(var_2, vec2<u32>(~max(1u, 0u), u_input.a) | vec2<u32>(~4294967295u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(457f))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = func_5(u_input.c, countOneBits(select(u_input.b.xz, _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, u_input.a), u_input.b.xx) ^ vec2<u32>(0u, u_input.a), true)), func_2(Struct_1(select(!vec3<bool>(true, false, global3.b), vec3<bool>(arg_0, global0.b, arg_1.x), vec3<bool>(true, false, global3.b)), global0.b, vec3<f32>(442f, global0.c.x, _wgslsmith_f_op_f32(-global3.c.x)), vec2<i32>(-40748i, _wgslsmith_clamp_i32(14245i, global0.d.x, u_input.c))), abs(u_input.b.zz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c.x)) - _wgslsmith_f_op_f32(sign(global0.c.x))), _wgslsmith_f_op_f32(round(global3.c.x)))), abs(~(~select(vec4<i32>(-54978i, -14688i, global0.d.x, 1i), vec4<i32>(global3.d.x, u_input.c, 0i, u_input.c), global1[_wgslsmith_index_u32(1u, 32u)]))));
    global0 = Struct_1(func_2(func_2(func_5(global3.d.x >> (u_input.a % 32u), _wgslsmith_mod_vec2_u32(vec2<u32>(39217u, arg_2.x), vec2<u32>(57615u, 0u)), func_5(u_input.c, arg_2.xz, Struct_1(vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(arg_2.x, 32u)], false), false, global0.c, vec2<i32>(-2857i, 2147483647i)), vec4<i32>(global3.d.x, u_input.c, global0.d.x, u_input.c)), vec4<i32>(37062i, 6635i, -36634i, 1i)), vec2<u32>(51479u << (0u % 32u), 5574u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c.x)))), reverseBits(vec2<u32>(u_input.a, 15117u)), _wgslsmith_f_op_f32(abs(var_1.c.x))).a, any(func_5(u_input.c, ~(~arg_2.xy), func_5(-u_input.c, vec2<u32>(4294967295u, u_input.a), Struct_1(vec3<bool>(false, true, arg_0), global0.a.x, vec3<f32>(-292f, 524f, global3.c.x), vec2<i32>(var_1.d.x, 2147483647i)), vec4<i32>(1i, -2488i, u_input.c, var_1.d.x)), firstLeadingBit(vec4<i32>(2147483647i, global3.d.x, -8479i, u_input.c))).a.xz), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(0i, vec2<u32>(u_input.a, 83345u), Struct_1(global3.a, arg_1.x, vec3<f32>(806f, 1000f, var_1.c.x), vec2<i32>(1i, var_1.d.x)), vec4<i32>(var_1.d.x, -2147483647i, -2147483647i, 1i)).c.x))), vec2<i32>(firstTrailingBit(1i), var_1.d.x));
    return Struct_1(!(!(!(!vec3<bool>(true, true, global3.b)))), var_1.b, var_1.c, ~var_1.d);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1025f, 1348f, !(global3.b & arg_2.b))), _wgslsmith_f_op_f32(exp2(func_5(-1i, u_input.b.zx, Struct_1(vec3<bool>(arg_1.a.x, false, global3.b), true, arg_1.c, arg_2.d), select(vec4<i32>(global0.d.x, 10839i, -79427i, -41211i), vec4<i32>(arg_0.d.x, u_input.c, -2147483647i, 2147483647i), true)).c.x)))));
    var_0 = -1285f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.c.x)), 905f);
    var var_2 = func_2(arg_1, u_input.b.zz, _wgslsmith_f_op_f32(max(856f, -1827f)));
    let var_3 = func_5(firstLeadingBit(53397i >> (u_input.a % 32u)), vec2<u32>(_wgslsmith_div_u32(0u, ~39388u), ~(~81377u | (8437u << (u_input.a % 32u)))), arg_1, ~vec4<i32>(var_2.d.x, 0i, ~2147483647i, u_input.c));
    return Struct_1(global3.a, false, var_2.c, vec2<i32>(-(~var_3.d.x), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.c)));
    var var_1 = func_6(func_1(!global0.a.x, vec4<bool>(!any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global3.b)), true, true, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.d.x, 2147483647i), vec3<i32>(-10988i, -1i, 62021i)) <= -global0.d.x), u_input.b), Struct_1(vec3<bool>(func_1(all(vec4<bool>(global3.b, true, global3.a.x, global0.a.x)), !vec4<bool>(true, global3.b, global3.b, false), global2[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)]).b, global3.a.x, u_input.c < firstLeadingBit(-1i)), global1[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_vec3_f32(-global3.c), -vec2<i32>(_wgslsmith_mod_i32(global0.d.x, -15240i), -2147483647i)), func_5(u_input.c >> (_wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) % 32u), vec2<u32>(_wgslsmith_add_u32(~u_input.a, select(u_input.a, 21662u, true)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 76231u, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, u_input.a)), global2[_wgslsmith_index_u32(u_input.b.x & u_input.b.x, 25u)])), Struct_1(global0.a, true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1724f, 657f, var_0.x) * global0.c))), select(vec2<i32>(-15396i, global0.d.x), vec2<i32>(global3.d.x, 0i), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 32u)])) | ~vec2<i32>(global3.d.x, u_input.c)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(global3.d.x, -48404i, -80i)), vec3<i32>(-1i, u_input.c, 1i)), global0.d.x, firstTrailingBit(-31596i), _wgslsmith_mod_i32(-10172i, global3.d.x))));
    global3 = func_6(Struct_1(global3.a, var_1.a.x || global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 32u)], _wgslsmith_f_op_vec3_f32(floor(var_0)), -(global3.d | global3.d)), func_6(func_6(func_2(func_6(Struct_1(vec3<bool>(global3.a.x, true, global3.b), global1[_wgslsmith_index_u32(80746u, 32u)], vec3<f32>(global0.c.x, global0.c.x, -1132f), global3.d), Struct_1(vec3<bool>(global3.a.x, global0.a.x, false), global3.b, vec3<f32>(-1000f, global3.c.x, var_1.c.x), vec2<i32>(var_1.d.x, global3.d.x)), Struct_1(var_1.a, var_1.b, global3.c, var_1.d)), u_input.b.xy, _wgslsmith_f_op_f32(ceil(-2225f))), Struct_1(!global3.a, func_5(-5465i, vec2<u32>(46213u, u_input.b.x), Struct_1(global0.a, var_1.a.x, vec3<f32>(var_0.x, var_0.x, -1380f), global0.d), vec4<i32>(u_input.c, 2147483647i, 851i, 38600i)).b, _wgslsmith_f_op_vec3_f32(-var_1.c), vec2<i32>(-2147483647i, u_input.c)), func_2(func_5(-26223i, u_input.b.xy, Struct_1(global0.a, false, var_0, vec2<i32>(-23770i, 39823i)), vec4<i32>(u_input.c, u_input.c, -12542i, u_input.c)), ~u_input.b.zz, -410f)), func_6(Struct_1(vec3<bool>(global0.b, true, true), true, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, 1112f, -1113f), var_1.c), var_1.d), Struct_1(global3.a, global1[_wgslsmith_index_u32(~u_input.a, 32u)], _wgslsmith_f_op_vec3_f32(trunc(var_1.c)), vec2<i32>(-33538i, -1i)), Struct_1(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), global1[_wgslsmith_index_u32(u_input.b.x, 32u)] & global3.a.x, var_0, vec2<i32>(-1i, var_1.d.x))), Struct_1(select(var_1.a, vec3<bool>(global0.a.x, global0.a.x, false), !vec3<bool>(false, global3.a.x, true)), false, var_1.c, vec2<i32>(func_1(true, vec4<bool>(false, false, var_1.a.x, global3.b), u_input.b).d.x, _wgslsmith_mult_i32(global0.d.x, global3.d.x)))), Struct_1(vec3<bool>(_wgslsmith_add_i32(var_1.d.x, u_input.c) <= (var_1.d.x >> (u_input.a % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x << (150607u % 32u), 49431u), 32u)], func_5(1i, ~u_input.b.xx, Struct_1(var_1.a, false, global0.c, vec2<i32>(-2147483647i, global0.d.x)), ~vec4<i32>(u_input.c, var_1.d.x, var_1.d.x, global3.d.x)).b), (_wgslsmith_f_op_f32(-global3.c.x) >= _wgslsmith_f_op_f32(var_0.x * -586f)) && true, vec3<f32>(412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f) - func_5(global0.d.x, u_input.b.yy, Struct_1(vec3<bool>(var_1.b, false, true), global0.a.x, vec3<f32>(var_0.x, global0.c.x, global0.c.x), var_1.d), vec4<i32>(global3.d.x, 57549i, 50263i, 2147483647i)).c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.x)) - -663f)), _wgslsmith_div_vec2_i32(global3.d, vec2<i32>(global0.d.x, global3.d.x)) >> (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u))));
    global3 = func_6(func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, select(u_input.c, var_1.d.x, true), -var_1.d.x, global3.d.x >> (35514u % 32u)), -(~vec4<i32>(2147483647i, global0.d.x, var_1.d.x, 0i))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, 1u)), u_input.b.yx ^ vec2<u32>(u_input.a, u_input.a)) << (reverseBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), func_6(func_6(Struct_1(global3.a, false, vec3<f32>(306f, var_0.x, -377f), vec2<i32>(20668i, global3.d.x)), func_6(Struct_1(vec3<bool>(true, global0.b, var_1.b), false, vec3<f32>(-263f, 1000f, var_0.x), global3.d), Struct_1(global3.a, global3.b, vec3<f32>(var_1.c.x, -2768f, 783f), vec2<i32>(-1i, -2146i)), Struct_1(var_1.a, var_1.b, var_1.c, global3.d)), func_6(Struct_1(vec3<bool>(true, false, false), true, vec3<f32>(global3.c.x, var_1.c.x, 210f), var_1.d), Struct_1(vec3<bool>(var_1.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false), global0.b, vec3<f32>(global0.c.x, 687f, var_0.x), var_1.d), Struct_1(vec3<bool>(true, false, global0.a.x), true, global0.c, vec2<i32>(global3.d.x, 18166i)))), func_2(Struct_1(global3.a, true, vec3<f32>(var_0.x, 219f, global0.c.x), global3.d), u_input.b.xz, _wgslsmith_f_op_f32(f32(-1f) * -311f)), Struct_1(select(global0.a, vec3<bool>(global0.a.x, true, global3.a.x), var_1.a), true, global0.c, global0.d)), -min(countOneBits(vec4<i32>(global3.d.x, var_1.d.x, -38117i, u_input.c)), vec4<i32>(global0.d.x, 17736i, global3.d.x, -1i) | vec4<i32>(0i, 2147483647i, u_input.c, var_1.d.x))), Struct_1(!global3.a, !(!(!global3.b)), vec3<f32>(var_1.c.x, 1592f, func_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true, true), global0.a.x, var_0, var_1.d), u_input.b.zz, _wgslsmith_f_op_f32(max(-284f, var_0.x))).c.x), firstTrailingBit(countOneBits(global0.d)) | max(-vec2<i32>(-1i, 2147483647i), _wgslsmith_add_vec2_i32(global3.d, vec2<i32>(global0.d.x, global0.d.x)))), func_2(func_2(func_1(!global1[_wgslsmith_index_u32(u_input.b.x, 32u)], vec4<bool>(global1[_wgslsmith_index_u32(74333u, 32u)], true, var_1.a.x, global1[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.a, 0u, 54617u))), abs(select(vec2<u32>(4294967295u, 44733u), vec2<u32>(u_input.a, 1u), global3.a.x)), func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 32u)], vec4<bool>(false, global3.a.x, global0.a.x, true), select(vec3<u32>(2260u, u_input.a, 11838u), vec3<u32>(4294967295u, 4294967295u, 6498u), true)).c.x), u_input.b.xx, var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(u_input.a | ~u_input.a, u_input.b.x), _wgslsmith_add_u32(u_input.a, u_input.a) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(7018u, u_input.a, u_input.a, u_input.a), vec4<u32>(93121u, u_input.b.x, 1u, 38662u)), abs(u_input.a)), abs(~select(~global2[_wgslsmith_index_u32(4294967295u, 25u)], ~vec3<u32>(11152u, 40760u, 1u), false)));
}

