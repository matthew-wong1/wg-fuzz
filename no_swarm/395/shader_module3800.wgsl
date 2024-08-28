struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-6513i, -1i, -1i, -33800i, 28751i, -14737i, 1i, i32(-2147483648), 18833i, 1i, -34030i, -21782i, -22474i, -19589i, -1i, -35494i, i32(-2147483648), 0i, 40305i, 18002i, 2147483647i, 2147483647i, -1i, i32(-2147483648));

var<private> global1: array<vec3<u32>, 24>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(!select(vec2<bool>(arg_0.a.a.x, false), vec2<bool>(true, true), select(arg_0.a.a, arg_0.a.a, arg_1)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.a.b, 4294967295u, ~arg_0.a.b), arg_0.a.b), _wgslsmith_f_op_vec3_f32(arg_0.a.c * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-740f, arg_2.x, 330f), vec3<f32>(arg_2.x, arg_2.x, 729f)))), abs(abs(arg_0.a.d)) & _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.a.d, 29840u, 31452u, 1u)), ~vec4<u32>(arg_0.a.b, arg_0.a.b, arg_0.a.d, 57860u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1712f, arg_0.a.c.x, 654f, 1124f) + vec4<f32>(arg_0.a.c.x, arg_2.x, -1133f, arg_2.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, arg_2.x, -198f, arg_0.a.c.x), vec4<f32>(692f, arg_0.a.c.x, 438f, arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, -602f, arg_2.x, 542f)), select(vec4<bool>(arg_0.a.a.x, arg_1, true, true), !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_1, false), vec4<bool>(arg_1, arg_0.a.a.x, arg_1, arg_1)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, -1400f, arg_0.a.c.x, 379f) * vec4<f32>(840f, 641f, arg_2.x, 2518f)), vec4<f32>(arg_2.x, 1363f, arg_0.a.c.x, arg_0.a.c.x), !arg_1)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, -100f, arg_2.x, arg_0.a.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2070f, 1996f, 132f, -1127f), vec4<f32>(arg_2.x, -229f, -1734f, -1667f), vec4<bool>(arg_0.a.a.x, true, arg_1, true))))))), Struct_2(firstTrailingBit(arg_0.a.b), arg_0.a, 2147483647i), select(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0.a.b), vec2<u32>(arg_0.a.b, arg_0.a.d)))), ~vec2<u32>(1u, 1u), arg_0.a.a), arg_0.a);
    let var_1 = _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(var_0.d.x | 4294967295u, 1u)), max(arg_0.a.b, 4294967295u));
    let var_2 = arg_0.a;
    global0 = array<i32, 24>();
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * 552f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.e.c.x, -505f), 1274f)), _wgslsmith_div_f32(var_0.c.b.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.c.x, -1246f)), _wgslsmith_f_op_f32(-1970f + arg_0.a.c.x)))), var_0.e.c.x)));
    return select(select(vec2<bool>(true & (arg_1 || arg_0.a.a.x), !(var_2.b <= var_2.b)), vec2<bool>(true, true), true), !select(arg_0.a.a, vec2<bool>(true, !var_0.e.a.x), arg_1), ~(~u_input.a) == arg_3);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global1 = array<vec3<u32>, 24>();
    let var_0 = false;
    var var_1 = Struct_2(1u, Struct_1(!(!func_3(Struct_3(Struct_1(vec2<bool>(var_0, false), 0u, vec3<f32>(364f, 1000f, 260f), 10576u)), var_0, vec2<f32>(-718f, 256f), u_input.a)), _wgslsmith_clamp_u32(10402u, ~130009u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36990u, 8117u, 30034u), vec4<u32>(10704u, 4294967295u, 4294967295u, 0u))) << (~4294967295u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-342f, -561f, 155f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1127f, 476f, -1288f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-249f, -422f, -605f))))), 28145u), countOneBits(_wgslsmith_div_i32(i32(-1i) * -u_input.a, ~(-19383i))));
    let var_2 = Struct_1(var_1.b.a, _wgslsmith_sub_u32(1u, var_1.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.c.x, 555f, var_1.b.c.x)))))), ~(4294967295u & ~(19379u << (var_1.a % 32u))));
    global1 = array<vec3<u32>, 24>();
    return _wgslsmith_sub_u32(~(~(var_1.b.d << (1u % 32u))), ~18426u);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_5 {
    let var_0 = arg_0.x;
    let var_1 = vec2<u32>(4294967295u >> (_wgslsmith_div_u32(~arg_3, ~func_2(vec2<i32>(u_input.a, 0i))) % 32u), ~(_wgslsmith_div_u32(arg_0.x, var_0) >> (1u % 32u)) >> (~arg_3 % 32u));
    let var_2 = Struct_4(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(arg_0.x, arg_3, 39749u, var_0) | arg_0), ~reverseBits(vec4<u32>(1u, 13492u, arg_0.x, 59507u))), vec3<f32>(_wgslsmith_f_op_f32(301f * -599f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-189f)))), arg_1), ~arg_3), vec4<f32>(-130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(140f * 527f)))), _wgslsmith_f_op_f32(1f - 1679f), 762f), Struct_2(4294967295u, Struct_1(vec2<bool>(true, true), min(var_0, ~arg_3), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, 665f, arg_2))))), _wgslsmith_dot_vec4_u32(abs(arg_0), vec4<u32>(1u, arg_3, 1u, 65603u) ^ arg_0)), ~(~32220i)), var_1, Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, false)), !(arg_1 >= arg_1)), 25636u, vec3<f32>(-1442f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(472f, 602f)) * -308f)), arg_3));
    let var_3 = -294f;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, _wgslsmith_f_op_f32(1345f + arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))) * var_2.e.c.x)));
    return Struct_5(true, var_2.c.b.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 537f) * var_4.xz), _wgslsmith_f_op_vec2_f32(exp2(var_4.zz)))))), _wgslsmith_f_op_vec2_f32(var_2.b.xz - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), var_4.x)), false)), var_1.x >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.d.x, countOneBits(var_0)), ~_wgslsmith_mult_u32(2986u, var_1.x)) % 32u), firstLeadingBit(~(~1u)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + 1000f), arg_0.c.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1154f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(arg_1.a.c.x + arg_0.c.x)), arg_1.a.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + 522f), _wgslsmith_f_op_f32(exp2(arg_1.a.c.x)), _wgslsmith_f_op_f32(arg_1.a.c.x * 739f)) * arg_1.a.c)));
    var_1 = arg_1.a.c;
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(2530i, -1i), vec2<i32>(-18485i, 0i)) << (vec2<u32>(~11236u, _wgslsmith_sub_u32(1u, 0u)) % vec2<u32>(32u)), vec2<i32>(2582i << (_wgslsmith_dot_vec4_u32(vec4<u32>(46238u, 1u, arg_0.e, arg_0.d), vec4<u32>(34636u, arg_1.a.b, 0u, 0u)) % 32u), global0[_wgslsmith_index_u32(max(1u, 4294967295u), 24u)])), firstTrailingBit(vec2<i32>(max(global0[_wgslsmith_index_u32(1u, 24u)], u_input.a), firstLeadingBit(-77076i)) ^ ~vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.a)));
    let var_3 = select(!(!(!vec2<bool>(false, arg_0.a))), !arg_0.b, arg_1.a.a.x);
    return Struct_3(Struct_1(vec2<bool>(any(vec3<bool>(true, arg_0.a, true)), true), _wgslsmith_mult_u32(abs(~35939u), 0u), _wgslsmith_f_op_vec3_f32(abs(arg_1.a.c)), ~(~abs(0u))));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    let var_0 = -15563i;
    var var_1 = func_4(func_1(abs(vec4<u32>(_wgslsmith_add_u32(arg_1, 58725u), arg_1, countOneBits(0u), _wgslsmith_add_u32(arg_0.a.b, 41041u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.a.c.x, _wgslsmith_div_f32(492f, 1120f))), _wgslsmith_f_op_f32(step(-1649f, _wgslsmith_f_op_f32(f32(-1f) * -735f))))), 632f, reverseBits(arg_1)), func_4(Struct_5(!all(vec3<bool>(true, false, arg_0.a.a.x)), !(!vec2<bool>(false, arg_0.a.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.c.yz)), _wgslsmith_clamp_u32(~arg_1, ~1u, ~0u), select(min(arg_0.a.b, arg_1), ~11569u, all(vec4<bool>(true, false, arg_0.a.a.x, arg_0.a.a.x)))), arg_0)).a;
    var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(var_1.c))))));
    global0 = array<i32, 24>();
    return select(vec4<bool>(true, true, false, var_1.a.x), vec4<bool>(true, (_wgslsmith_div_i32(global0[_wgslsmith_index_u32(90527u, 24u)], -2147483647i) & (2147483647i << (arg_1 % 32u))) == var_0, true, ~(~arg_0.a.b) >= 1u), arg_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 24>();
    global1 = array<vec3<u32>, 24>();
    let var_0 = func_5(func_4(func_1(vec4<u32>(~0u, _wgslsmith_mod_u32(0u, 1u), ~0u, ~4866u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1606f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f + -206f)), 38579u), Struct_3(Struct_1(vec2<bool>(true, true), 17650u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1445f, -1000f, 1000f) * vec3<f32>(374f, 309f, 520f)), 121542u))), abs(~firstTrailingBit(1u)));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_1 = Struct_4(func_4(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(43251u, 27351u, 33276u, 91950u), select(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 24006u, 1u), false)), func_4(func_1(vec4<u32>(0u, 1u, 1u, 12552u), -476f, -2543f, 67186u), Struct_3(Struct_1(vec2<bool>(var_0.x, var_0.x), 13360u, vec3<f32>(805f, -1151f, 180f), 0u))).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(972f + -578f)), 1u), Struct_3(func_4(func_1(vec4<u32>(114408u, 0u, 4294967295u, 4294967295u), -1909f, 612f, 4294967295u), Struct_3(Struct_1(vec2<bool>(true, false), 21161u, vec3<f32>(1000f, -147f, 640f), 41603u))).a)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, -1799f, 1536f, 1464f) - vec4<f32>(-223f, 455f, -209f, -1000f)))), Struct_2(~_wgslsmith_mod_u32(func_4(Struct_5(var_0.x, vec2<bool>(false, var_0.x), vec2<f32>(-847f, 956f), 27455u, 839u), Struct_3(Struct_1(var_0.zz, 4294967295u, vec3<f32>(-1000f, 1127f, -1499f), 32537u))).a.d, ~19831u), Struct_1(vec2<bool>(true, var_0.x), _wgslsmith_sub_u32(~0u, 14863u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, -593f, 1209f))), 4294967295u), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(6496u, 24u)], -2147483647i)), _wgslsmith_mod_vec2_u32(~vec2<u32>(11491u, 4294967295u), ~select(vec2<u32>(0u, 33960u), vec2<u32>(22121u, 1u), func_3(Struct_3(Struct_1(var_0.wx, 43384u, vec3<f32>(-1000f, -684f, 445f), 0u)), var_0.x, vec2<f32>(-1150f, 1000f), u_input.a))), Struct_1(vec2<bool>(func_5(Struct_3(Struct_1(vec2<bool>(false, false), 3759u, vec3<f32>(531f, 1196f, -1406f), 4294967295u)), 1u).x, select(func_1(vec4<u32>(4294967295u, 1u, 88747u, 1u), 585f, -476f, 0u).a, var_0.x && false, false)), _wgslsmith_mult_u32(func_4(Struct_5(var_0.x, var_0.wx, vec2<f32>(274f, 833f), 1u, 53801u), func_4(Struct_5(var_0.x, var_0.xx, vec2<f32>(-990f, 659f), 53344u, 12163u), Struct_3(Struct_1(vec2<bool>(var_0.x, false), 4294967295u, vec3<f32>(547f, -1389f, 685f), 19114u)))).a.d, abs(countOneBits(12998u))), vec3<f32>(264f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f), -275f), -1108f), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(~vec4<u32>(24699u, 1u, 102065u, 4294967295u), firstLeadingBit(vec4<u32>(23007u, 60061u, 143068u, 4294967295u))))));
    var var_2 = func_5(func_4(func_1(vec4<u32>(var_1.d.x, var_1.c.b.b, var_1.c.a, min(44786u, var_1.e.b)), _wgslsmith_f_op_f32(f32(-1f) * -420f), var_1.e.c.x, 3119u >> (~var_1.a.d % 32u)), func_4(Struct_5(false, select(var_1.c.b.a, var_0.xx, var_1.e.a.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(161f, var_1.e.c.x))), var_1.a.d >> (16144u % 32u), firstLeadingBit(var_1.c.b.d)), func_4(func_1(vec4<u32>(var_1.c.a, 14818u, var_1.a.d, 4294967295u), var_1.c.b.c.x, var_1.b.x, 35033u), func_4(Struct_5(var_1.a.a.x, vec2<bool>(var_0.x, false), var_1.e.c.yz, 42483u, 15348u), Struct_3(Struct_1(vec2<bool>(var_0.x, var_1.e.a.x), var_1.a.d, vec3<f32>(var_1.e.c.x, var_1.b.x, 1090f), 7937u)))))), var_1.c.a);
    let var_3 = Struct_4(var_1.c.b, _wgslsmith_f_op_vec4_f32(sign(var_1.b)), Struct_2(~var_1.d.x, var_1.e, ~(~(-26507i)) & u_input.a), var_1.d, Struct_1(var_2.zz, var_1.d.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.b.c.x, -1101f, -774f), var_1.a.c)))))), 13997u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.c.c >> (~firstTrailingBit(4294967295u) % 32u), var_1.c.c), max(~var_1.d, select(var_1.d, vec2<u32>(abs(900u), 2747u), func_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.d.x, var_3.d.x, 0u, 0u), vec4<u32>(12670u, var_1.d.x, var_3.a.b, var_1.c.b.b)), _wgslsmith_f_op_f32(min(var_3.c.b.c.x, var_3.c.b.c.x)), _wgslsmith_f_op_f32(trunc(var_1.c.b.c.x)), ~var_3.d.x).b.x)));
}

