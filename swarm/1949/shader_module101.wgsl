struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1256f, -1000f, -916f), vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, -1i));

var<private> global2: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(i32(-2147483648), i32(-2147483648)), Struct_5(-42344i, -1i), Struct_5(2147483647i, 7958i), Struct_5(i32(-2147483648), i32(-2147483648)), Struct_5(8970i, -30126i), Struct_5(12868i, 5992i), Struct_5(57040i, 2147483647i));

var<private> global3: array<vec2<f32>, 11>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global3 = array<vec2<f32>, 11>();
    var var_0 = abs(global0.b.x) > ~min(924u, 0u);
    let var_1 = Struct_1(!select(select(select(global1.a, vec3<bool>(false, false, false), vec3<bool>(global0.a.x, global0.a.x, true)), vec3<bool>(false, false, global0.a.x), !vec3<bool>(global0.a.x, true, global0.a.x)), !global1.c.yzy, vec3<bool>(false, true, true)), vec3<f32>(-1136f, global1.b.x, global0.d), !global1.c, select(vec2<i32>(-2147483647i, _wgslsmith_add_i32(abs(-10274i), -47574i & global1.d.x)), -vec2<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), min(1086i, u_input.a)), select(select(!global0.a.xz, select(vec2<bool>(false, global1.a.x), global0.a.zy, vec2<bool>(global1.c.x, global0.a.x)), global0.a.xz), !global0.a.xz, select(vec2<bool>(false, false), select(vec2<bool>(global1.a.x, global0.a.x), global0.a.xx, vec2<bool>(true, global1.c.x)), true))));
    let var_2 = global0.a;
    var var_3 = select(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-55774i, global1.d.x, global1.d.x, -80422i), countOneBits(vec4<i32>(var_1.d.x, 1i, 33342i, global1.d.x))), firstTrailingBit(-vec4<i32>(0i, 0i, global1.d.x, -13698i))), 1i, 1i, 0i), -vec4<i32>(74517i, -2147483647i, global0.c.x, -2147483647i), select(false, var_1.a.x, (_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.x, -2147483647i, global0.c.x), vec3<i32>(-27128i, -17862i, -1i)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, -5098i, 2147483647i, var_1.d.x), vec4<i32>(global0.c.x, 18784i, var_1.d.x, -8301i))) < _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global1.d.x, 38391i, 2147483647i)), reverseBits(vec3<i32>(u_input.a, -41145i, global0.c.x)))));
    return var_2.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_5) -> bool {
    global1 = Struct_1(vec3<bool>(global1.a.x, arg_1, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global0.d, -1610f)) + _wgslsmith_f_op_vec3_f32(-global1.b)))), global1.c, max(~_wgslsmith_sub_vec2_i32(-vec2<i32>(50464i, arg_2.b), global1.d), countOneBits(vec2<i32>(u_input.a, -5191i)) & _wgslsmith_div_vec2_i32(vec2<i32>(global0.c.x, arg_2.b), select(global0.c, global0.c, arg_1))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(63742u, 11u)]);
    var_0 = _wgslsmith_f_op_vec2_f32(-global1.b.zx);
    let var_1 = global0.b.x;
    global3 = array<vec2<f32>, 11>();
    return all(vec4<bool>(!any(!global1.c), all(select(global0.a.xx, global0.a.zx, !global1.c.yz)), true, !(!all(vec2<bool>(true, global1.c.x)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = !func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(global0.d, global1.b.x, -1866f)))), func_3(), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(countOneBits(global0.b.x), 22611u)), 7u)]);
    var var_1 = u_input.a;
    let var_2 = Struct_2(all(vec2<bool>(global1.c.x, true)) == !global0.a.x, global0.a);
    let var_3 = global0.b.wwy;
    var var_4 = ~vec3<u32>(_wgslsmith_div_u32(~29444u, global0.b.x), ~60179u, ~var_3.x);
    return _wgslsmith_div_vec3_i32(vec3<i32>(global0.c.x, -37864i, _wgslsmith_sub_i32(~firstLeadingBit(25493i), _wgslsmith_dot_vec2_i32(abs(global1.d), ~vec2<i32>(global1.d.x, u_input.a)))), _wgslsmith_mult_vec3_i32(select(firstLeadingBit(vec3<i32>(23005i, -41535i, 6386i) & vec3<i32>(-67477i, u_input.a, global1.d.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-19481i, u_input.a, global1.d.x), vec3<i32>(global0.c.x, 2147483647i, 2147483647i)), select(var_2.b, global0.a, var_2.b)), -(vec3<i32>(1i, global0.c.x, u_input.a) >> (vec3<u32>(81037u, global0.b.x, global0.b.x) % vec3<u32>(32u))) << (~(~vec3<u32>(1u, 0u, 67588u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = vec3<f32>(global1.b.x, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(sign(-409f)))));
    let var_1 = firstTrailingBit(1i);
    global2 = array<Struct_5, 7>();
    let var_2 = global1.d.x;
    let var_3 = _wgslsmith_clamp_vec3_i32(-(vec3<i32>(~(-4802i), u_input.a >> (0u % 32u), 40198i) ^ func_2()), abs(_wgslsmith_mod_vec3_i32(~(vec3<i32>(global0.c.x, 6298i, global0.c.x) ^ vec3<i32>(var_1, var_1, -58201i)), vec3<i32>(_wgslsmith_div_i32(global1.d.x, var_1), -2147483647i, 18013i))), -vec3<i32>(_wgslsmith_mod_i32(var_1, -2147483647i), var_1, _wgslsmith_mult_i32(~u_input.a, ~0i)));
    return global0.c.x;
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global2 = array<Struct_5, 7>();
    var var_0 = Struct_1(vec3<bool>(false, !(global1.c.x || true) & (global1.a.x && (173f < global0.d)), arg_1.a.c.x), global1.b, arg_1.e.c, vec2<i32>(-2147483647i, -2147483647i));
    let var_1 = global0.c.x;
    let var_2 = select(-vec2<i32>(1i, ~_wgslsmith_mod_i32(-2147483647i, arg_0)), arg_1.a.d, !select(select(global0.a.zx, global1.a.zx, arg_1.e.a.x), var_0.c.zy, arg_1.e.a.zx));
    let var_3 = global2[_wgslsmith_index_u32(arg_1.c.x, 7u)];
    return Struct_3(Struct_1(!vec3<bool>(var_0.c.x, global1.a.x, var_0.c.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, var_0.b.x, 2017f)) + vec3<f32>(-1000f, arg_1.d.x, 555f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 881f, arg_1.a.b.x) + vec3<f32>(var_0.b.x, global1.b.x, -1000f))))), vec4<bool>(arg_1.e.a.x, _wgslsmith_dot_vec2_u32(global0.b.zy, arg_1.c.ww) != global0.b.x, all(select(vec4<bool>(var_0.a.x, false, false, true), global1.c, var_0.c)), true || arg_1.e.c.x), vec2<i32>(~reverseBits(arg_0), var_3.a)), var_2, ~vec4<u32>(0u, 0u, _wgslsmith_clamp_u32(global0.b.x | arg_1.c.x, 23211u, ~7300u), 1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d))), -1660f, 1102f), Struct_1(vec3<bool>(func_3(), true, !(58342i <= var_3.a)), _wgslsmith_f_op_vec3_f32(arg_1.e.b - var_0.b), !vec4<bool>(!global1.a.x, all(vec3<bool>(var_0.a.x, global1.a.x, global0.a.x)), true, true), vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, var_3.b), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_mod_i32(-global1.d.x << (global0.b.x % 32u), global1.d.x));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(global0.b.x, ~(~(~32232u))), ~(~53491u << (_wgslsmith_dot_vec3_u32(global0.b.yxw, ~vec3<u32>(1u, global0.b.x, 58583u)) % 32u)), global0.b.x);
    let var_2 = func_5(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(37143i, 9937i), global0.c), func_1(global0.b, ~vec2<u32>(99390u, 5968u)) ^ -(~global1.d.x), -32337i), Struct_3(Struct_1(select(select(global0.a, vec3<bool>(false, true, true), vec3<bool>(false, global1.c.x, global0.a.x)), global0.a, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(806f, 615f, global0.d)), global1.b), vec4<bool>(global1.a.x, global0.a.x, false, !global0.a.x), abs(~vec2<i32>(-30967i, -1i))), _wgslsmith_div_vec2_i32(vec2<i32>(31139i, abs(u_input.a)), global0.c), min(vec4<u32>(var_1.x, _wgslsmith_mult_u32(7079u, global0.b.x), 4294967295u, abs(var_1.x)), _wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(4294967295u, 0u, global0.b.x, var_1.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1354f, _wgslsmith_div_f32(417f, 1937f), _wgslsmith_f_op_f32(trunc(global1.b.x))))), Struct_1(!vec3<bool>(global1.c.x, false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.b)) + vec3<f32>(global1.b.x, -574f, -1609f)), global1.c, vec2<i32>(global0.c.x, -1i))));
    var var_3 = vec4<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a, 49475i, 2147483647i), countOneBits(vec3<i32>(global1.d.x, global1.d.x, u_input.a)), firstTrailingBit(vec3<i32>(-1297i, -19752i, global1.d.x))), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.d.x, 4221i, global0.c.x), vec3<i32>(global1.d.x, -19224i, u_input.a))), ~_wgslsmith_sub_i32((u_input.a | -1i) | 1514i, i32(-1i) * -13735i), _wgslsmith_mult_i32(max(countOneBits(~(-28491i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(global1.d.x, -2147483647i), ~(-1i))), _wgslsmith_div_i32(-1i, max(i32(-1i) * -12785i, func_2().x))), -2147483647i);
    var var_4 = global0.a;
    var_3 = ~vec4<i32>(global1.d.x, firstLeadingBit(var_3.x), ~(~var_3.x), ~(-41774i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.x, vec2<u32>(global0.b.x, _wgslsmith_mod_u32(global0.b.x, 0u)), global1.b.x, firstLeadingBit(abs(vec4<u32>(global0.b.x, global0.b.x, var_2.c.x, 4294967295u))) << (min(global0.b, vec4<u32>(~var_2.c.x, 4294967295u, min(var_2.c.x, 86564u), 4294967295u & var_2.c.x)) % vec4<u32>(32u)));
}

