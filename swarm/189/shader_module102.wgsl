struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(1i, 2147483647i, -7552i, 0i, 18842i, 17731i, i32(-2147483648), -36698i, 2147483647i, -7710i, -9938i, 0i, i32(-2147483648), -5126i, -29204i, -1i, 0i, -1i);

var<private> global1: Struct_4 = Struct_4(45677u, Struct_1(229f, true, 343f));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1022f, true, -903f), Struct_1(482f, false, 1425f), Struct_1(-468f, false, 1338f), Struct_1(-1182f, true, -171f), Struct_1(1057f, true, 974f), Struct_1(-375f, true, -279f), Struct_1(1972f, false, 595f), Struct_1(116f, false, 503f), Struct_1(1071f, true, 126f), Struct_1(1996f, true, -1000f), Struct_1(-1255f, false, -407f), Struct_1(1765f, true, -262f), Struct_1(920f, true, -850f), Struct_1(-147f, false, 444f), Struct_1(1038f, false, -345f), Struct_1(-1553f, true, -733f));

var<private> global3: Struct_3 = Struct_3(vec4<bool>(true, false, true, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_3(!vec4<bool>(global1.b.b, false, false, u_input.a.x != ~0u));
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(abs(_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(global1.a, 18u)])), -37403i, -_wgslsmith_div_i32(-1i, arg_1.x), ~(-arg_1.x))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(select(arg_1, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 18u)], -4156i), var_0.a.x), arg_1), arg_1));
    let var_2 = -(arg_1.zyw | vec3<i32>(arg_1.x, _wgslsmith_add_i32(abs(31216i), -2147483647i), countOneBits(max(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_1.x))));
    global2 = array<Struct_1, 16>();
    var var_3 = Struct_5(vec3<bool>(var_0.a.x, var_0.a.x, global3.a.x), Struct_1(533f, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(691f, arg_0.x, false)), _wgslsmith_f_op_f32(global1.b.a - -772f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1358f - _wgslsmith_f_op_f32(global1.b.a * 1000f))))));
    return arg_1.x;
}

fn func_2() -> Struct_4 {
    var var_0 = ~vec4<i32>(firstTrailingBit(select(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), func_3(vec4<f32>(101f, 739f, 305f, 432f), vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), false)), max(global0[_wgslsmith_index_u32(~(u_input.a.x ^ u_input.a.x), 18u)], 1i), 12792i, -firstTrailingBit(2147483647i));
    let var_1 = Struct_3(global3.a);
    let var_2 = var_1;
    global0 = array<i32, 18>();
    return Struct_4(0u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(51224u, _wgslsmith_div_u32(~0u, global1.a)) >> (_wgslsmith_mult_u32(global1.a, 33153u) % 32u), 16u)]);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_3(vec4<bool>(arg_1.b.b, global0[_wgslsmith_index_u32(select(countOneBits(arg_1.a), global1.a, any(global3.a.zw)), 18u)] >= global0[_wgslsmith_index_u32(4294967295u, 18u)], true, false));
    let var_1 = countOneBits(u_input.a.zw);
    let var_2 = arg_0;
    let var_3 = global3.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.c)));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yw, firstLeadingBit(u_input.a.xz)), var_1);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    global2 = array<Struct_1, 16>();
    let var_0 = global2[_wgslsmith_index_u32(func_2().a, 16u)];
    global0 = array<i32, 18>();
    var var_1 = _wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstLeadingBit(min(0u, 4294967295u)), ~reverseBits(select(global1.a, arg_1.x, false))), 18u)]);
    global0 = array<i32, 18>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, max(arg_1.x, u_input.a.x & 4294967295u)), 18u)];
}

fn func_1() -> Struct_4 {
    let var_0 = -func_5(select(func_4(_wgslsmith_div_u32(23997u, 1u), func_2(), vec4<f32>(global1.b.c, -970f, 626f, -1161f)), firstTrailingBit(firstTrailingBit(vec2<u32>(global1.a, 38393u))), global3.a.yz), u_input.a.zz, Struct_2(select(global1.b.b, u_input.a.x < 0u, true)));
    let var_1 = Struct_3(vec4<bool>(false, any(select(global3.a.wx, !vec2<bool>(global1.b.b, global3.a.x), select(vec2<bool>(global3.a.x, false), global3.a.zx, vec2<bool>(global3.a.x, global3.a.x)))), all(global3.a.zwz), _wgslsmith_clamp_i32(abs(global0[_wgslsmith_index_u32(global1.a, 18u)]), _wgslsmith_add_i32(var_0, var_0), 1i) >= -2147483647i));
    let var_2 = select(var_1.a, select(!vec4<bool>(true, any(vec4<bool>(false, global3.a.x, global1.b.b, false)), true, true), !select(select(vec4<bool>(global3.a.x, true, var_1.a.x, false), var_1.a, true), vec4<bool>(global1.b.b, false, false, global3.a.x), vec4<bool>(true, global1.b.b, false, true)), !global3.a.x), all(global3.a.wx));
    return Struct_4(~(~u_input.a.x), func_2().b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global2 = array<Struct_1, 16>();
    global1 = Struct_4(global1.a, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1186f + -638f), _wgslsmith_div_f32(-1000f, -328f)))), true, func_1().b.c));
    let var_0 = Struct_5(select(global3.a.xwx, vec3<bool>(true, func_1().b.b || global3.a.x, !(456f <= global1.b.a)), !all(global3.a.yy)), global1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-681f)))));
    global1 = func_1();
    var var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(61545u, ~(~(~global1.a))), 18u)]);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(36814i >> (_wgslsmith_dot_vec4_u32(u_input.a & vec4<u32>(37070u, 17473u, 27352u, 5078u), u_input.a) % 32u), -global0[_wgslsmith_index_u32(0u, 18u)]), vec2<i32>(abs(global0[_wgslsmith_index_u32(1u, 18u)]) >> (0u % 32u), reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(87076u, 5486u, u_input.a.x))), 18u)])));
    var var_3 = Struct_2(((~80181u >= global1.a) | global1.b.b) | (func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c, global1.b.a, global1.b.c, var_0.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(62562i, 2147483647i, global0[_wgslsmith_index_u32(1u, 18u)], -31050i), vec4<i32>(2147483647i, var_2, global0[_wgslsmith_index_u32(global1.a, 18u)], var_2))) >= -10652i));
    var var_4 = abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2 << (1u % 32u), select(global0[_wgslsmith_index_u32(26503u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true)), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(99464u, 18u)], -1i)) & -vec2<i32>(42540i, var_2), vec2<bool>(true, var_3.a)), vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 2147483647i, var_2), vec4<i32>(var_2, -1i, var_2, 0i))), select(var_2, 0i, true) & 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a, global0[_wgslsmith_index_u32(global1.a | func_1().a, 18u)]);
}

