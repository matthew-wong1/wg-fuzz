struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<u32, 10> = array<u32, 10>(0u, 11898u, 44576u, 0u, 925u, 1u, 3009u, 29918u, 4294967295u, 2248u);

var<private> global2: array<f32, 19> = array<f32, 19>(400f, -330f, -548f, 706f, 625f, 1000f, -3278f, -1208f, 374f, -638f, 419f, 241f, -808f, 1064f, 548f, -118f, -821f, -136f, -284f);

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global3 = select(vec3<bool>(!(!global3.x == all(vec3<bool>(false, global3.x, true))), global3.x, global3.x), select(!vec3<bool>(true, global3.x, select(global3.x, global3.x, global3.x)), !vec3<bool>(select(true, global3.x, false), any(global3.yy), global3.x), !vec3<bool>(any(vec4<bool>(false, global3.x, global3.x, true)), true, !global3.x)), false);
    global2 = array<f32, 19>();
    let var_0 = reverseBits(vec3<u32>(54581u, 38428u, ~global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(0u, 81378u), max(60543u, 77353u)), 10u)]));
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(min(var_0.xz, vec2<u32>(0u, 1u)), vec2<u32>(0u, u_input.c) & vec2<u32>(4294967295u, var_0.x), reverseBits(vec2<u32>(65358u, 27748u))), abs(u_input.b)), max(~_wgslsmith_div_u32(1u, 4294967295u), ~u_input.c >> (u_input.a % 32u)), 4294967295u, u_input.c);
    global2 = array<f32, 19>();
    return countOneBits(min(firstLeadingBit(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-21007i, 35252i), vec2<i32>(1i, -38569i)))), vec2<i32>(-32029i, i32(-1i) * -1i)));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1327f);
    return arg_0.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> vec4<u32> {
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    global3 = select(arg_1.b.c.c, vec3<bool>(!arg_1.b.c.c.x, arg_0.x, global3.x), global3.x);
    global3 = arg_0;
    var var_0 = Struct_5(-_wgslsmith_add_vec2_i32(-(~vec2<i32>(-1i, -1i)), vec2<i32>(arg_1.b.a.b.x, arg_1.a.x) & ~arg_1.a), Struct_4(arg_1.b.a, Struct_2(arg_1.b.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.b.b.b)) + arg_1.b.b.b), true, vec2<i32>(arg_1.a.x, -1i), vec2<i32>(1i, abs(-2147483647i))), arg_1.b.c), ~select(vec2<u32>(global1[_wgslsmith_index_u32(1u, 10u)], abs(1u)), u_input.b, !vec2<bool>(arg_1.b.b.c, global3.x)));
    return _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(20665u, 0u, 34282u, var_0.c.x), max(vec4<u32>(19973u, 4294967295u, var_0.b.b.a.x, 0u), vec4<u32>(arg_1.c.x, 4294967295u, 4294967295u, 1u)))), select(~(~vec4<u32>(u_input.b.x, 0u, 4294967295u, 33930u)), (vec4<u32>(var_0.b.b.a.x, 0u, u_input.b.x, 37766u) ^ vec4<u32>(41491u, 4294967295u, var_0.b.b.a.x, u_input.b.x)) >> (max(vec4<u32>(global1[_wgslsmith_index_u32(39837u, 10u)], arg_1.b.b.a.x, 4294967295u, global1[_wgslsmith_index_u32(arg_1.b.b.a.x, 10u)]), vec4<u32>(14318u, 6768u, u_input.b.x, 4294967295u)) % vec4<u32>(32u)), false), reverseBits(abs(vec4<u32>(arg_1.c.x, 58970u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1296u, 10u)], 10u)]))) ^ vec4<u32>(reverseBits(29172u), _wgslsmith_mult_u32(var_0.b.b.a.x, 34338u), 14351u, ~0u)) | _wgslsmith_sub_vec4_u32((~vec4<u32>(1u, global1[_wgslsmith_index_u32(var_0.c.x, 10u)], 0u, arg_1.c.x) & _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.x, global1[_wgslsmith_index_u32(var_0.b.b.a.x, 10u)], 14207u, var_0.b.b.a.x), vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 10u)], 26498u, arg_1.c.x))) ^ _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 28796u, 36652u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 15392u, global1[_wgslsmith_index_u32(58063u, 10u)], arg_1.b.b.a.x), vec4<u32>(66415u, arg_1.c.x, arg_1.b.b.a.x, arg_1.b.b.a.x), vec4<u32>(24080u, global1[_wgslsmith_index_u32(arg_1.c.x, 10u)], global1[_wgslsmith_index_u32(arg_1.c.x, 10u)], arg_1.c.x))), select(vec4<u32>(53490u, 54085u, 1u, var_0.b.b.a.x) ^ vec4<u32>(u_input.a, arg_1.b.b.a.x, var_0.c.x, arg_1.c.x), abs(~vec4<u32>(0u, 67986u, 1u, 0u)), select(vec4<bool>(true, arg_1.b.b.c, global3.x, arg_1.b.b.c), !vec4<bool>(false, var_0.b.b.c, false, var_0.b.b.c), !vec4<bool>(var_0.b.a.a.x, var_0.b.a.c, var_0.b.c.a, global3.x))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec2<i32> {
    var var_0 = func_5(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 19u)])) == global2[_wgslsmith_index_u32(arg_2.b.a.x, 19u)], all(vec3<bool>(true, true, true)), any(!arg_2.c.c.zx)), Struct_5(func_4(Struct_5(func_3(), Struct_4(Struct_1(arg_2.a.a, arg_2.a.b, arg_2.c.a, -484f), arg_2.b, Struct_3(arg_2.c.c.x, vec2<i32>(arg_0, arg_1), vec3<bool>(false, global3.x, false), arg_0, arg_0)), countOneBits(u_input.b)), ~(~81922u), _wgslsmith_clamp_u32(reverseBits(73076u), 1u, abs(37510u)), vec2<u32>(u_input.c, u_input.c)), arg_2, ~reverseBits(arg_2.b.a.yz)));
    global2 = array<f32, 19>();
    let var_1 = arg_2.c;
    let var_2 = 4294967295u;
    var var_3 = 1545f;
    return _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(abs(-vec2<i32>(arg_2.c.d, 6362i)), arg_2.b.d), arg_2.a.b.yx);
}

fn func_6(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_2, vec4<f32>(403f, -1429f, _wgslsmith_div_f32(999f, global2[_wgslsmith_index_u32(11197u, 19u)]), arg_2.x)))));
    var var_1 = false != !((arg_1.x | 4294967295u) >= _wgslsmith_add_u32(arg_0.b.b.a.x << (global1[_wgslsmith_index_u32(arg_1.x, 10u)] % 32u), countOneBits(115236u)));
    global3 = !vec3<bool>(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~1u, 10u)], 19u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 19u)])), true, true);
    var var_2 = abs(_wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(firstLeadingBit(arg_1.x << (14454u % 32u)), ~(~4294967295u))));
    global3 = vec3<bool>(global3.x, !(!any(arg_0.b.c.c)), true);
    return Struct_5(_wgslsmith_div_vec2_i32(~(~vec2<i32>(arg_0.b.b.d.x, arg_0.b.a.b.x)) & vec2<i32>(~arg_0.b.a.b.x, arg_0.a.x), _wgslsmith_add_vec2_i32(arg_0.b.a.b.xz, _wgslsmith_mult_vec2_i32(select(vec2<i32>(-282i, arg_0.a.x), vec2<i32>(arg_0.a.x, 10929i), vec2<bool>(arg_0.b.c.c.x, arg_0.b.b.c)), ~vec2<i32>(arg_0.a.x, -13459i)))), Struct_4(Struct_1(!(!vec2<bool>(arg_0.b.b.c, global3.x)), vec3<i32>(-13719i, 2147483647i, arg_0.a.x & -1i), (33250i > arg_0.a.x) == select(arg_0.b.c.a, arg_0.b.a.c, arg_0.b.b.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x - 316f)))), Struct_2(~firstTrailingBit(arg_0.b.b.a), vec2<f32>(1f, -1030f), all(!arg_0.b.c.c), -vec2<i32>(arg_0.a.x, arg_0.b.a.b.x) >> (arg_0.c % vec2<u32>(32u)), func_3()), arg_0.b.c), _wgslsmith_add_vec2_u32(countOneBits(abs(firstLeadingBit(arg_0.b.b.a.yz))), u_input.b));
}

fn func_7(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = ~(~arg_0.b.b.a.x);
    global2 = array<f32, 19>();
    var var_1 = vec2<i32>(-arg_0.a.x, 63385i);
    var_1 = arg_0.b.a.b.yy;
    var var_2 = Struct_2(arg_0.b.b.a, vec2<f32>(global2[_wgslsmith_index_u32(~(~17525u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1419f - 469f) + global2[_wgslsmith_index_u32(18529u << (var_0 % 32u), 19u)]) * _wgslsmith_f_op_f32(min(917f, _wgslsmith_div_f32(-1161f, -1614f))))), any(select(select(select(vec4<bool>(arg_0.b.b.c, arg_0.b.a.a.x, global3.x, arg_0.b.c.a), vec4<bool>(global3.x, arg_0.b.a.c, global3.x, global3.x), true), vec4<bool>(arg_0.b.b.c, true, true, global3.x), select(vec4<bool>(global3.x, false, arg_0.b.c.c.x, false), vec4<bool>(true, true, global3.x, arg_0.b.a.a.x), vec4<bool>(true, arg_0.b.c.a, true, arg_0.b.a.a.x))), !(!vec4<bool>(arg_0.b.b.c, global3.x, false, arg_0.b.a.c)), func_6(arg_0, vec3<u32>(34839u, 4294967295u, 1u), arg_1).b.c.a & global3.x)), arg_0.a, vec2<i32>(~arg_0.a.x, reverseBits(22518i)));
    return arg_0.b.b;
}

fn func_8(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = reverseBits(_wgslsmith_sub_u32(arg_0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(8899u, 10u)], 73144u, u_input.b.x, 72270u), abs(vec4<u32>(4294967295u, 12754u, 48975u, u_input.c)))), 10u)]));
    var var_1 = Struct_5(firstTrailingBit(vec2<i32>(arg_3, 9142i)), func_6(func_6(func_6(Struct_5(arg_0.e, Struct_4(Struct_1(global3.zx, vec3<i32>(arg_3, arg_0.d.x, -20328i), global3.x, 1013f), Struct_2(arg_0.a, arg_0.b, true, vec2<i32>(arg_0.e.x, -87533i), arg_0.d), Struct_3(true, vec2<i32>(arg_0.e.x, -33740i), arg_1, arg_3, arg_0.e.x)), vec2<u32>(u_input.c, arg_0.a.x)), func_5(arg_1, Struct_5(arg_0.d, Struct_4(Struct_1(global3.yz, vec3<i32>(arg_3, -2147483647i, arg_0.e.x), global3.x, -763f), arg_0, Struct_3(global3.x, vec2<i32>(2147483647i, arg_3), vec3<bool>(arg_1.x, arg_0.c, false), arg_3, arg_0.e.x)), u_input.b)).xxx, vec4<f32>(732f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60979u, 10u)], 19u)], arg_0.b.x, 1296f)), vec3<u32>(~4294967295u, var_0, ~var_0), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10815u, 19u)]), arg_0.b.x, _wgslsmith_f_op_f32(-1000f * arg_0.b.x))), arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.x, arg_0.b.x, 1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1308f, arg_2, -1000f, arg_0.b.x)))) * vec4<f32>(_wgslsmith_f_op_f32(select(483f, 214f, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(-arg_0.b.x), global2[_wgslsmith_index_u32(17936u, 19u)]))).b, _wgslsmith_mult_vec2_u32(arg_0.a.zx, vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, u_input.a, 21544u, 27677u), vec4<u32>(arg_0.a.x, var_0, 11923u, arg_0.a.x)), 10u)], u_input.a), abs(4294967295u))));
    let var_2 = countOneBits(-_wgslsmith_sub_i32(~_wgslsmith_sub_i32(0i, 2147483647i), firstLeadingBit(arg_0.e.x)));
    let var_3 = Struct_1(vec2<bool>(var_1.b.c.c.x, global3.x), firstTrailingBit(var_1.b.a.b), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)));
    let var_4 = Struct_4(Struct_1(vec2<bool>(false, any(vec4<bool>(false, false, false, arg_0.c))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(44790i, arg_3, arg_3) ^ vec3<i32>(4106i, 34790i, 0i)), firstLeadingBit(var_1.b.a.b), var_3.b), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c, 10u)], 1u), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -553f)))), var_1.b.b, Struct_3(true, vec2<i32>(arg_3 >> ((1u << (1u % 32u)) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, 0i, 29587i), vec3<i32>(var_2, 14230i, var_3.b.x))), select(!var_1.b.c.c, !select(arg_1, var_1.b.c.c, vec3<bool>(var_3.c, false, true)), arg_1), select(arg_0.d.x, select(-10779i >> (u_input.a % 32u), 40405i, global3.x), select(var_1.b.a.c, !arg_1.x, true)), func_6(Struct_5(firstTrailingBit(var_3.b.zy), Struct_4(var_1.b.a, Struct_2(var_1.b.b.a, vec2<f32>(arg_0.b.x, -1197f), true, vec2<i32>(var_2, var_3.b.x), vec2<i32>(44592i, 0i)), var_1.b.c), ~vec2<u32>(57396u, 23094u)), vec3<u32>(abs(55155u), arg_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.b.a.x, u_input.c), vec2<u32>(29980u, var_1.b.b.a.x))), vec4<f32>(-321f, _wgslsmith_f_op_f32(sign(247f)), -381f, -713f)).b.b.d.x));
    return Struct_2(_wgslsmith_mod_vec3_u32(~var_1.b.b.a, var_4.b.a) << (var_1.b.b.a % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b.b.x, -1000f))))), true, vec2<i32>(~func_3().x, -_wgslsmith_dot_vec4_i32(vec4<i32>(62635i, arg_0.d.x, arg_3, 40736i) & vec4<i32>(arg_0.e.x, arg_0.e.x, var_3.b.x, arg_3), ~vec4<i32>(-2147483647i, var_2, arg_0.e.x, var_4.b.e.x))), firstTrailingBit(var_1.b.c.b));
}

fn func_1() -> i32 {
    var var_0 = func_8(func_7(func_6(Struct_5(func_2(1i, 13508i, Struct_4(Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, 0i, 88254i), global3.x, 183f), Struct_2(vec3<u32>(31586u, u_input.b.x, u_input.c), vec2<f32>(-2075f, -312f), false, vec2<i32>(24906i, 84i), vec2<i32>(-31405i, 0i)), Struct_3(false, vec2<i32>(-158i, -10424i), vec3<bool>(global3.x, true, false), -1i, -950i))), Struct_4(Struct_1(global3.yx, vec3<i32>(1i, 1i, 0i), global3.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 19u)]), Struct_2(vec3<u32>(u_input.a, u_input.c, 25470u), vec2<f32>(-308f, 325f), true, vec2<i32>(-55690i, -20709i), vec2<i32>(-10180i, -9380i)), Struct_3(global3.x, vec2<i32>(-2147483647i, 0i), vec3<bool>(false, global3.x, global3.x), -2147483647i, -25594i)), u_input.b), ~(~vec3<u32>(u_input.c, 41310u, 1u)), vec4<f32>(global2[_wgslsmith_index_u32(select(27321u, 31693u, false), 19u)], global2[_wgslsmith_index_u32(3640u, 19u)], _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(4294967295u, 19u)], 1000f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(74537u, 19u)]))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 141f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 19u)]), _wgslsmith_f_op_f32(floor(-766f)))))), select(vec3<bool>(!any(global3.zz), global3.x || any(vec4<bool>(true, global3.x, true, global3.x)), global3.x), !vec3<bool>(false, !global3.x, !global3.x), any(vec4<bool>(true, all(vec4<bool>(true, global3.x, true, true)), false, true))), _wgslsmith_f_op_f32(-1246f * 1490f), -(~1i));
    global2 = array<f32, 19>();
    global0 = -18389i;
    var_0 = Struct_2(~(~func_7(func_6(Struct_5(vec2<i32>(var_0.d.x, 53368i), Struct_4(Struct_1(global3.zx, vec3<i32>(53662i, var_0.e.x, 22472i), true, -443f), Struct_2(var_0.a, var_0.b, var_0.c, var_0.d, vec2<i32>(var_0.d.x, -633i)), Struct_3(false, var_0.e, vec3<bool>(true, var_0.c, global3.x), -27387i, var_0.e.x)), var_0.a.xz), var_0.a, vec4<f32>(513f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18884u, 10u)], 19u)], 917f, 1463f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1329f, -2746f, global2[_wgslsmith_index_u32(var_0.a.x, 19u)], var_0.b.x) + vec4<f32>(1588f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 19u)], 923f, 1975f))).a), vec2<f32>(_wgslsmith_f_op_f32(trunc(633f)), _wgslsmith_f_op_f32(478f - 684f)), ~var_0.a.x < ~81467u, -_wgslsmith_clamp_vec2_i32(-func_3(), vec2<i32>(var_0.e.x, 1i), _wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, -2147483647i), var_0.e, false), -vec2<i32>(-2147483647i, var_0.d.x))), vec2<i32>(var_0.e.x, -39356i));
    var var_1 = Struct_3(var_0.c, ~(-(vec2<i32>(-1i, var_0.d.x) & vec2<i32>(-71802i, -1i))) >> (select(u_input.b, min(vec2<u32>(28714u, 84874u), vec2<u32>(u_input.a, 40473u)), var_0.c) % vec2<u32>(32u)), select(!(!select(vec3<bool>(true, var_0.c, global3.x), vec3<bool>(var_0.c, var_0.c, global3.x), true)), vec3<bool>(!var_0.c, all(!vec3<bool>(true, global3.x, false)), var_0.c), !vec3<bool>(global3.x, false, all(vec2<bool>(false, global3.x)))), -33290i, countOneBits(var_0.e.x));
    return ~(_wgslsmith_mult_i32(33216i, ~_wgslsmith_mult_i32(-31282i, var_1.e)) | _wgslsmith_clamp_i32(firstTrailingBit(21161i), i32(-1i) * -1225i, -15555i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(max(~abs(vec4<i32>(36353i, -1i, 0i, 31573i)), firstLeadingBit(vec4<i32>(0i, -2147483647i, 30893i, -13810i))), ~vec4<i32>(2147483647i, -1i, -1i, func_1()), vec4<i32>(i32(-1i) * -1i, -1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -46916i), _wgslsmith_dot_vec2_i32(vec2<i32>(-3795i, 38216i), vec2<i32>(-20840i, 11980i))), -1i)), vec4<i32>(_wgslsmith_sub_i32(~select(2147483647i, 0i, global3.x), _wgslsmith_add_i32(max(18201i, -1i), select(-18371i, 12980i, true))), _wgslsmith_dot_vec2_i32(func_4(func_6(Struct_5(vec2<i32>(-25149i, -1i), Struct_4(Struct_1(global3.zx, vec3<i32>(2147483647i, 8430i, 1i), global3.x, global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), Struct_2(vec3<u32>(0u, global1[_wgslsmith_index_u32(78065u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15670u, 10u)], 10u)]), vec2<f32>(-260f, global2[_wgslsmith_index_u32(6931u, 19u)]), global3.x, vec2<i32>(-1i, 720i), vec2<i32>(38044i, 4839i)), Struct_3(true, vec2<i32>(-2147483647i, -1940i), vec3<bool>(global3.x, global3.x, global3.x), 94202i, 20878i)), u_input.b), vec3<u32>(u_input.c, u_input.a, 4294967295u), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(u_input.c, 19u)], -1762f, -227f)), 1u, _wgslsmith_add_u32(0u, 40307u), u_input.b), min(vec2<i32>(1i, 1i), vec2<i32>(-14876i, 0i))), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, ~2937i), firstLeadingBit(_wgslsmith_clamp_i32(-1i, 1i, -37004i))), 1i));
    global2 = array<f32, 19>();
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global2[_wgslsmith_index_u32(min(48438u, firstLeadingBit(0u << (u_input.a % 32u))), 19u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2320f) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57836u, 10u)], 19u)]))))));
}

