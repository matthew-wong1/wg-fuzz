struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<f32, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<f32, 21>();
    let var_0 = Struct_2(vec4<u32>(max(28996u, arg_3.c), _wgslsmith_dot_vec4_u32(arg_0.a.a, ~vec4<u32>(4294967295u, 84206u, 32504u, 55324u)), u_input.d << (~(u_input.e.x | u_input.d) % 32u), _wgslsmith_mult_u32(21930u, 22986u)), select(select(select(vec3<bool>(arg_0.a.b.x, arg_3.a.x, arg_0.a.e.a.x), vec3<bool>(true, false, true), arg_1.a.e.a.xww), vec3<bool>(arg_3.d > 17987i, true != arg_0.a.b.x, arg_2), 1i <= ~u_input.a.x), arg_0.a.e.a.zzz, select(select(select(vec3<bool>(arg_3.a.x, true, false), vec3<bool>(false, true, arg_3.a.x), arg_0.a.b), vec3<bool>(arg_3.a.x, true, false), true), vec3<bool>(true, arg_0.b.x < 218f, arg_2), arg_2)), arg_1.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1796f + _wgslsmith_f_op_f32(f32(-1f) * -587f)), arg_0.c.x))), Struct_1(arg_1.a.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1385f, arg_3.b), _wgslsmith_f_op_f32(ceil(-1508f))))), firstLeadingBit(arg_0.a.e.c) | 41084u, _wgslsmith_sub_i32(u_input.b, ~1i), abs(~(20232i ^ arg_1.a.e.d))));
    var var_1 = vec3<u32>(u_input.d, ~1u, ~(~abs(~arg_1.a.a.x)));
    let var_2 = any(vec4<bool>(all(var_0.e.a.zyx), !((var_0.e.a.x | true) != var_0.b.x), false, arg_0.a.c));
    var var_3 = arg_0.a.e;
    return !vec4<bool>(2147483647i <= -u_input.b, any(select(select(vec3<bool>(false, false, arg_1.a.e.a.x), vec3<bool>(false, true, var_3.a.x), arg_3.a.x), vec3<bool>(arg_0.a.b.x, var_2, false), select(arg_1.a.e.a.xww, vec3<bool>(true, true, true), vec3<bool>(arg_0.a.b.x, arg_1.a.c, true)))), any(var_3.a.zzx), false);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = true;
    let var_2 = Struct_3(Struct_2(vec4<u32>(4294967295u << (arg_0 % 32u), ~max(1u, arg_1), arg_0, 1u), vec3<bool>(select(true, true, true), true, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 21u)] * 565f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 26u)] - global0[_wgslsmith_index_u32(3828u, 26u)]) * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(50923u, 26u)]))))), Struct_1(select(vec4<bool>(true, true, true, true), func_3(Struct_3(Struct_2(u_input.e, vec3<bool>(true, true, true), false, global0[_wgslsmith_index_u32(arg_1, 26u)], Struct_1(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(1u, 26u)], arg_1, -9848i, 2147483647i)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], global1[_wgslsmith_index_u32(arg_1, 21u)]), vec2<f32>(-751f, 346f)), Struct_3(Struct_2(u_input.e, vec3<bool>(false, true, true), true, -527f, Struct_1(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(u_input.e.x, 26u)], arg_1, u_input.b, u_input.b)), vec2<f32>(1083f, -1272f), vec2<f32>(global1[_wgslsmith_index_u32(76806u, 21u)], global1[_wgslsmith_index_u32(45610u, 21u)])), false, Struct_1(vec4<bool>(true, false, true, true), 363f, arg_1, 1i, u_input.b)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false)), _wgslsmith_f_op_f32(max(699f, _wgslsmith_div_f32(-840f, 1132f))), ~arg_0, -2147483647i, u_input.c.x)), vec2<f32>(1633f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(18380u, arg_0), u_input.e.x, arg_1), 26u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-533f, -162f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(arg_1, 26u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 21u)], 259f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-152f)), global0[_wgslsmith_index_u32(min(4294967295u, 30544u), 26u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_1, 21u)], global0[_wgslsmith_index_u32(u_input.d, 26u)]) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 26u)], 2118f), vec2<f32>(-439f, -240f))))));
    let var_3 = min(u_input.e, ~(~(_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(115014u, 1u, 1u, 30730u)) ^ u_input.e)));
    let var_4 = (abs(vec4<u32>(~0u, _wgslsmith_mult_u32(arg_1, var_3.x), _wgslsmith_sub_u32(4294967295u, 47060u), abs(u_input.d))) ^ ~vec4<u32>(reverseBits(u_input.e.x), ~arg_1, min(80341u, var_2.a.e.c), u_input.e.x | u_input.e.x)) & vec4<u32>(~u_input.e.x, 60672u, abs(var_3.x), _wgslsmith_div_u32(arg_1, reverseBits(u_input.e.x >> (1u % 32u))));
    return Struct_2(vec4<u32>(min(_wgslsmith_sub_u32(43282u, 1u), arg_1), ~1u, var_3.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_4.x, var_3.x), var_2.a.a.yzz)), vec3<bool>(false, all(vec4<bool>(725i == u_input.b, all(vec3<bool>(false, var_2.a.c, var_2.a.e.a.x)), var_2.a.e.a.x, all(var_2.a.b))), var_2.a.b.x), false, global1[_wgslsmith_index_u32(var_4.x, 21u)], var_2.a.e);
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(min(vec2<i32>(-13745i, func_2(71859u, arg_0.a.x).e.d), vec2<i32>(_wgslsmith_mult_i32(arg_0.e.e, -44645i), arg_0.e.e)), -u_input.c.xz);
    var var_1 = Struct_3(Struct_2(arg_0.a, arg_0.b, arg_0.e.a.x, _wgslsmith_f_op_f32(-565f - -700f), arg_0.e), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, -246f))), vec2<f32>(264f, _wgslsmith_f_op_f32(f32(-1f) * -326f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 26u)] * global1[_wgslsmith_index_u32(arg_0.a.x, 21u)])), global0[_wgslsmith_index_u32(9844u, 26u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e.b, 183f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], global1[_wgslsmith_index_u32(1u, 21u)]), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1919f, global0[_wgslsmith_index_u32(arg_0.a.x, 26u)])), false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.b, -1267f) - vec2<f32>(arg_0.e.b, -354f)))));
    var var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f * 219f)), 368f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c, vec2<f32>(1065f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_0.a.x, 26u)]))), min(var_1.a.e.d, var_0.x) > _wgslsmith_sub_i32(u_input.b, 2147483647i))) - vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(func_2(arg_0.a.x, 11882u).d - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 21u)] * global0[_wgslsmith_index_u32(u_input.d, 26u)])))));
    let var_3 = _wgslsmith_add_u32(arg_0.a.x, arg_0.a.x);
    var_0 = ~(u_input.c.zz >> (arg_0.a.xz % vec2<u32>(32u)));
    return 34334u;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.e.c, 935u), vec3<u32>(arg_0.a.x, 4294967295u, 1u)), ~(vec3<u32>(arg_0.a.x, arg_1.x, 4294967295u) | u_input.e.wzy)), func_4(func_2(~u_input.d, ~1u))) << (0u % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-634f, 581f, global0[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.d, 21u)]) - vec4<f32>(1805f, arg_0.e.b, -312f, global1[_wgslsmith_index_u32(arg_0.a.x, 21u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.b, 703f, -1284f, -2261f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1217f, 1130f, 747f, arg_0.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, global0[_wgslsmith_index_u32(1u, 26u)], -118f, arg_0.d))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2294f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 26u)], -151f)), _wgslsmith_f_op_f32(f32(-1f) * -2362f), _wgslsmith_f_op_f32(sign(1487f)))))));
    let var_2 = func_2(arg_0.e.c, _wgslsmith_add_u32(~50476u, arg_1.x) << (~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.a.x, 4294967295u), abs(arg_1.x)) % 32u));
    var_0 = 109117u;
    let var_3 = Struct_1(!arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(872f, -1140f))), firstTrailingBit(var_2.e.c), -37982i, ~2147483647i);
    return ~(~countOneBits(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(78147u, var_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    var var_0 = Struct_2(u_input.e, !select(vec3<bool>(true, all(vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), true), true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~u_input.d), 21u)], Struct_1(vec4<bool>(!any(vec3<bool>(true, false, true)), true, true, false & all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(294f)), _wgslsmith_f_op_f32(ceil(388f))), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(func_1(Struct_2(u_input.e, vec3<bool>(true, false, false), true, global0[_wgslsmith_index_u32(5273u, 26u)], Struct_1(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(0u, 26u)], 4294967295u, -42547i, 10566i)), vec4<u32>(u_input.d, u_input.e.x, 30512u, u_input.e.x), vec4<bool>(false, true, true, false), u_input.b), 21u)])))), ~min(max(8523u, 37591u), 11156u), -33033i, reverseBits(-34170i)));
    var_0 = Struct_2(u_input.e, var_0.e.a.zzy, select(-(~u_input.a.x) > _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.d, 19809i, -89929i, u_input.c.x) >> (var_0.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.c.x, var_0.e.e), vec4<i32>(0i, u_input.b, u_input.a.x, -1i))), var_0.e.a.x, var_0.e.a.x), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.a, u_input.e), select(u_input.e, var_0.a, var_0.e.a)), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 52077u), var_0.a.x)).e.c, 21u)], 928f)), Struct_1(vec4<bool>(var_0.b.x, -var_0.e.e == -2147483647i, var_0.b.x, !(var_0.e.d < 1i)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x, _wgslsmith_mod_u32(u_input.e.x, var_0.a.x)), 26u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(16221u, 21u)], -276f, var_0.c)) * global0[_wgslsmith_index_u32(1u, 26u)])), 0u, min(1i, func_2(var_0.e.c, 0u).e.d | 2147483647i), -_wgslsmith_mult_i32(_wgslsmith_add_i32(46179i, var_0.e.e), firstTrailingBit(19182i))));
    global0 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-353f, 964f), vec2<f32>(global0[_wgslsmith_index_u32(66233u, 26u)], -923f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(386f, -420f), vec2<f32>(var_0.d, var_0.d))))))));
    var var_2 = func_2(1u, _wgslsmith_mod_u32(func_4(func_2(u_input.d, ~67684u)), ~1u));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1i, reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(57661i, var_0.e.e, 1i, -22521i), abs(vec4<i32>(u_input.c.x, var_2.e.e, 33653i, u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(11499i, var_2.e.e, var_0.e.d, var_0.e.e), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, var_0.e.d))), vec4<i32>(0i, 0i, min(var_2.e.d, -7953i), reverseBits(u_input.b)))));
}

