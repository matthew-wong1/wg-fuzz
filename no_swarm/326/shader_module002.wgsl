struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(21426u, 21790u, 4294967295u, 28357u), any(global1[_wgslsmith_index_u32(76502u, 16u)])), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_mod_u32(1u, ~1u), 8921u) != abs(~4294967295u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    global1 = array<vec3<bool>, 16>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, _wgslsmith_f_op_f32(-global0.x), -434f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = countOneBits(vec3<i32>(-2147483647i, 2147483647i, i32(-1i) * -max(arg_2.x, u_input.a.x)));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(ceil(101f)));
    var var_1 = global1[_wgslsmith_index_u32(abs(arg_3), 16u)];
    return Struct_2(Struct_1(arg_1.x, countOneBits(max(select(vec4<i32>(0i, -23370i, arg_0.x, 1i), vec4<i32>(var_0.x, 22560i, -29148i, arg_0.x), false), _wgslsmith_sub_vec4_i32(arg_0, arg_0))), !vec4<bool>(!var_1.x, true, true, true)), -378f, u_input.a.wx, Struct_1(arg_1.x, -_wgslsmith_add_vec4_i32(u_input.a << (vec4<u32>(arg_3, arg_3, arg_3, arg_3) % vec4<u32>(32u)), countOneBits(vec4<i32>(-1i, -2147483647i, u_input.a.x, 12973i))), vec4<bool>(!any(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), arg_1.x, true, var_1.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> bool {
    var var_0 = func_3(u_input.a, vec4<bool>(any(vec4<bool>(true, true, true, func_2(2147483647i, 11499i))), false, true, true), u_input.a.ww, reverseBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.x, 42482u, arg_0.x, 67291u)), firstTrailingBit(~vec4<u32>(arg_1.x, 0u, 4885u, 13653u)))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(517f, 940f, -344f, 2030f) + vec4<f32>(1000f, global0.x, global0.x, -302f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -186f, global0.x), vec4<f32>(var_0.b, global0.x, global0.x, var_0.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1000f, 1280f, 407f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-448f, var_0.b, var_0.b, var_0.b)))))))));
    var var_1 = vec4<bool>(true, true, var_0.d.c.x, func_3(u_input.a, vec4<bool>(var_0.d.a, true, var_0.d.a, !all(var_0.d.c)), ~vec2<i32>(u_input.a.x, u_input.a.x) ^ _wgslsmith_div_vec2_i32(u_input.a.wx >> (arg_0 % vec2<u32>(32u)), reverseBits(var_0.d.b.xz)), ~4294967295u).d.a);
    var_0 = func_3(abs(abs(u_input.a)), select(var_0.d.c, !vec4<bool>(-522f == global0.x, true, false || var_1.x, var_0.a.b.x < -1i), vec4<bool>(var_0.a.a, !func_2(u_input.a.x, u_input.a.x), var_0.a.c.x, (var_0.a.b.x > u_input.a.x) | var_0.a.c.x)), vec2<i32>(_wgslsmith_sub_i32(var_0.c.x, _wgslsmith_div_i32(var_0.c.x, -var_0.c.x)), select(min(~0i, 1i), 43300i, var_0.a.a)), arg_0.x);
    global0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x)), var_0.b);
    return var_1.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * global0.x)) * _wgslsmith_f_op_f32(floor(-958f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -659f, -262f, -631f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -550f, 1887f))))));
    var var_1 = arg_2;
    let var_2 = vec2<u32>(1u, 1u);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(global0.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global0.yz)), _wgslsmith_f_op_vec2_f32(global0.xz + global0.yy), func_3(var_1.b, vec4<bool>(false, false, true, true), u_input.a.yw, var_2.x).d.c.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1000f), vec2<f32>(arg_1, arg_3), arg_2.a))))), _wgslsmith_f_op_vec2_f32(max(global0.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-333f, 100f) * var_0.xy)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3, func_3(max(vec4<i32>(arg_2.b.x, arg_2.b.x, 6222i, u_input.a.x) & vec4<i32>(0i, var_1.b.x, var_1.b.x, var_1.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b.x, 26853i, arg_2.b.x, -2147483647i), vec4<i32>(u_input.a.x, arg_2.b.x, -1i, var_1.b.x))), select(func_3(arg_2.b, vec4<bool>(var_1.a, true, var_1.c.x, false), u_input.a.ww, 51739u).d.c, var_1.c, true), min(countOneBits(vec2<i32>(14766i, arg_2.b.x)), -vec2<i32>(35432i, arg_2.b.x)), ~arg_0.x).b, 373f));
    return Struct_4(!func_3(vec4<i32>(select(var_1.b.x, 10915i, true), -arg_2.b.x, _wgslsmith_div_i32(-18983i, -2147483647i), 1i), arg_2.c, vec2<i32>(u_input.a.x, arg_2.b.x), _wgslsmith_div_u32(150307u, abs(arg_0.x))).d.c.xzz, ~arg_0.zy, vec2<bool>(~_wgslsmith_sub_u32(var_2.x, 86238u) > var_2.x, !all(!vec2<bool>(arg_2.a, arg_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f - var_0.x)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, -1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.d, 664f)) + arg_3.d), global0.x)), vec4<f32>(132f, global0.x, _wgslsmith_f_op_f32(global0.x - 2227f), -103f)));
    var var_0 = Struct_1(arg_3.a.x, arg_1, select(select(select(!vec4<bool>(false, true, arg_3.c.x, true), select(vec4<bool>(arg_3.c.x, true, false, true), vec4<bool>(arg_3.c.x, true, arg_2, false), arg_3.a.x), select(vec4<bool>(arg_3.c.x, true, false, arg_3.a.x), vec4<bool>(arg_2, arg_3.a.x, false, true), arg_2)), select(select(vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.a.x, false), vec4<bool>(true, arg_2, arg_3.c.x, false), vec4<bool>(arg_3.a.x, arg_2, arg_3.c.x, arg_3.c.x)), select(vec4<bool>(arg_3.a.x, arg_2, false, true), vec4<bool>(arg_3.c.x, arg_2, false, false), vec4<bool>(arg_2, false, false, arg_2)), vec4<bool>(arg_2, false, false, arg_2)), func_2(abs(2147483647i), 1i)), vec4<bool>(arg_2, (944f < arg_3.d) && !arg_2, true, false), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    var var_2 = any(!(!(!var_0.c)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, 615f)), global0.x, _wgslsmith_f_op_f32(step(arg_3.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2007f + arg_3.d))))), arg_3.d));
    return Struct_1(14292u < ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(arg_3.b.x, arg_0.x, arg_3.b.x, arg_3.b.x)), vec4<u32>(4294967295u, arg_3.b.x, arg_0.x, 90041u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), firstTrailingBit(58276i), -33666i), u_input.a.ywx), 36955i, var_0.b.x, min(arg_1.x, arg_1.x)), vec4<bool>(func_1(arg_0, countOneBits(~vec3<u32>(arg_0.x, 14176u, arg_0.x))), true, func_4(vec3<u32>(arg_3.b.x, arg_3.b.x, min(arg_3.b.x, arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(629f, 2711f))), func_3(_wgslsmith_add_vec4_i32(var_0.b, arg_1), var_0.c, -vec2<i32>(1i, u_input.a.x), ~1u).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 1267f), _wgslsmith_div_f32(1557f, 456f))).c.x, arg_3.a.x));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: bool) -> Struct_3 {
    var var_0 = true;
    let var_1 = arg_2.x;
    let var_2 = Struct_4(!func_5(vec2<u32>(1u, 1u), -(vec4<i32>(28455i, 77256i, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, 22716i, -64003i, u_input.a.x)), true, func_4(~vec3<u32>(1u, 1u, 24694u), arg_2.x, arg_0, _wgslsmith_f_op_f32(floor(var_1)))).c.yzy, select(~firstLeadingBit(vec2<u32>(1u, 1u)), func_4(vec3<u32>(~3128u, 1u, ~0u), -597f, func_5(abs(vec2<u32>(36790u, 54898u)), select(arg_0.b, vec4<i32>(arg_0.b.x, -2147483647i, -22011i, 13090i), arg_0.c), any(arg_0.c), Struct_4(arg_0.c.yww, vec2<u32>(89512u, 34728u), arg_0.c.zz, var_1)), arg_2.x).b, !(!select(arg_0.c.ww, vec2<bool>(arg_3, false), arg_1))), !(!vec2<bool>(all(arg_0.c.yyx), any(global1[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_div_f32(arg_2.x, -915f));
    let var_3 = Struct_1(all(!var_2.a.yx), _wgslsmith_mod_vec4_i32(~vec4<i32>(42907i, 33407i, arg_0.b.x, -9631i) & vec4<i32>(arg_0.b.x, 1i, ~(-1i), -arg_0.b.x), arg_0.b), vec4<bool>(true, false, 1000f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1430f * var_2.d))), arg_3));
    let var_4 = Struct_1(arg_3, select(vec4<i32>(u_input.a.x, -3229i, -15783i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-7809i, u_input.a.x), _wgslsmith_div_i32(-8591i, 1i))), func_5(func_4(firstTrailingBit(vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x)), _wgslsmith_f_op_f32(292f + arg_2.x), var_3, global0.x).b, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.x, 1i, 0i, u_input.a.x), u_input.a), true, Struct_4(func_5(vec2<u32>(var_2.b.x, 2911u), vec4<i32>(-51232i, 1097i, -52505i, 1i), var_2.a.x, Struct_4(vec3<bool>(arg_1, true, var_2.c.x), vec2<u32>(var_2.b.x, var_2.b.x), var_3.c.ww, -414f)).c.xwy, select(var_2.b, var_2.b, false), func_3(var_3.b, arg_0.c, var_3.b.yy, var_2.b.x).a.c.xw, var_2.d)).b, func_4(~vec3<u32>(1u, 18178u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -929f), arg_0, -820f).b.x == var_2.b.x), vec4<bool>(arg_0.c.x, _wgslsmith_f_op_f32(global0.x + -284f) == func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, var_3.b.x), var_3.b, u_input.a), vec4<bool>(false, false, arg_0.c.x, true), min(vec2<i32>(u_input.a.x, -2147483647i), arg_0.b.zw), max(1u, var_2.b.x)).b, arg_0.a, all(!(!vec4<bool>(true, true, false, arg_3)))));
    return Struct_3(abs(abs(select(firstLeadingBit(vec3<u32>(1u, var_2.b.x, var_2.b.x)), vec3<u32>(4294967295u, 23507u, 1u), !arg_1))), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-var_2.d), 1372f, var_2.d) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-546f, global0.x) * _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-810f * global0.x), _wgslsmith_f_op_f32(min(1782f, -1000f)))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1179f * arg_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = func_6(func_5(~vec2<u32>(~1u, 4294967295u), -firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), true & !(u_input.a.x < 50248i), func_4(~vec3<u32>(1u, 65878u, 86164u), -1308f, Struct_1(func_1(vec2<u32>(29940u, 71731u), vec3<u32>(0u, 1u, 66074u)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 15040i, u_input.a.x)), vec4<bool>(false, false, true, true)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, global0.x)) - global0.ww), false);
    global0 = vec4<f32>(1390f, -586f, -290f, _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x));
    var var_2 = -482f;
    var var_3 = vec3<bool>(true | !(!func_2(u_input.a.x, 22414i)), ~(-2147483647i) >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a) >> (vec4<u32>(var_1.b, var_1.b, var_1.a.x, var_1.a.x) % vec4<u32>(32u)), vec4<i32>(-1i) * -u_input.a), true);
    var_3 = global1[_wgslsmith_index_u32(min(var_1.b, ~43792u), 16u)];
    let var_4 = func_6(Struct_1(all(!vec2<bool>(var_3.x, true)), ~max(reverseBits(u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), vec4<bool>(true && var_3.x, all(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), var_3.x, var_3.x)), any(!(!(!vec4<bool>(var_3.x, true, var_3.x, var_3.x)))), var_1.c.zw, true).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (_wgslsmith_add_u32(var_1.a.x, var_1.b) % 32u), ~(~(~_wgslsmith_sub_u32(5026u, var_1.a.x))), -u_input.a.x, ~_wgslsmith_div_u32(min(var_1.a.x, 334u), ~var_4) >> (0u % 32u), func_4(~vec3<u32>(~var_4, 4294967295u, _wgslsmith_div_u32(var_4, 78496u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f + _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-var_1.c.x)), Struct_1(func_4(vec3<u32>(15812u, var_1.b, var_4), 868f, Struct_1(false, u_input.a, vec4<bool>(false, var_3.x, false, var_3.x)), -1211f).a.x, -u_input.a, select(!vec4<bool>(var_3.x, false, true, var_3.x), !vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(var_3.x, true, var_3.x, var_3.x))), 1393f).d);
}

