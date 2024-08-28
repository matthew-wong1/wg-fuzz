struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(28887u, 54004u, 0u, 0u, 1u, 31158u, 0u, 4294967295u, 16419u, 1u, 0u, 15316u, 1u, 1u, 1u, 21937u, 73530u, 1u, 22485u, 4294967295u, 4294967295u, 1u, 17866u, 0u, 4294967295u, 0u, 30610u, 76681u, 22452u);

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(14074i, i32(-2147483648)), vec2<i32>(-18100i, i32(-2147483648)), vec2<i32>(2147483647i, 35790i), vec2<i32>(-16398i, 47575i), vec2<i32>(-3060i, 30171i), vec2<i32>(1i, 1i), vec2<i32>(-13285i, 48089i), vec2<i32>(50065i, -1i), vec2<i32>(0i, 45266i), vec2<i32>(72164i, i32(-2147483648)), vec2<i32>(1i, -11798i), vec2<i32>(4050i, 5917i), vec2<i32>(-23771i, 6119i), vec2<i32>(-22106i, i32(-2147483648)), vec2<i32>(-9754i, 2147483647i), vec2<i32>(3024i, -1i), vec2<i32>(i32(-2147483648), 7038i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 7621i), vec2<i32>(-2565i, -1499i), vec2<i32>(16625i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-37485i, -1i), vec2<i32>(-1i, 46695i), vec2<i32>(-11363i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(1i, -57682i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(~u_input.c) << (~(~u_input.a) % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(countOneBits(u_input.d), u_input.d << (u_input.a % 32u)), _wgslsmith_sub_i32(0i, 26122i)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 57306i), ~global1[_wgslsmith_index_u32(u_input.b.x, 30u)])), 1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1369f, -430f) * vec2<f32>(320f, 1109f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, -885f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1309f)) + -1000f), -575f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -978f), 237f)))));
    global1 = array<vec2<i32>, 30>();
    let var_2 = Struct_4(Struct_1(u_input.d), var_1.x, Struct_1(var_0));
    global0 = array<u32, 29>();
    return 1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    global1 = array<vec2<i32>, 30>();
    global1 = array<vec2<i32>, 30>();
    let var_0 = -vec4<i32>(~0i, u_input.d, u_input.d, u_input.d | func_3());
    let var_1 = Struct_1(-1i);
    global1 = array<vec2<i32>, 30>();
    return min(var_1.a, ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(min(u_input.d, -4557i), 2147483647i), -2147483647i, var_1.a));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(64234i, ~1i, arg_0.x, ~(-u_input.d)), vec4<i32>(_wgslsmith_mod_i32(~max(u_input.c, -42763i), 1i), ~(func_2(arg_2, 1418f) << (_wgslsmith_clamp_u32(arg_1, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54269u, 29u)], 29u)]) % 32u)), -_wgslsmith_sub_i32(arg_0.x, 36578i << (u_input.b.x % 32u)), 2147483647i));
    var var_1 = countOneBits(vec2<i32>(max(_wgslsmith_dot_vec2_i32(var_0.ww, vec2<i32>(0i, -2147483647i)), -select(9185i, var_0.x, true)), reverseBits(~1i)));
    let var_2 = 1084f;
    global0 = array<u32, 29>();
    var var_3 = true;
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(!vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), true, any(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))), true);
    var var_1 = ~abs(u_input.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 626f, -399f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(989f, _wgslsmith_f_op_f32(575f + 162f), _wgslsmith_div_f32(-989f, -282f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 2568f, 340f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1222f, 909f, -444f)))))));
    let var_3 = vec4<bool>(select(!all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true || (var_0.x || false), true) == any(var_0.zw), true, !(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, u_input.c, 61863i)), -vec4<i32>(u_input.c, 35069i, 20831i, 1236i)) == _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d, 24199i), ~u_input.d)), var_0.x);
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(95583u, 29u)], global0[_wgslsmith_index_u32(53485u, 29u)]), u_input.b.yx)), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 4570u), _wgslsmith_sub_vec2_u32(max(u_input.b.yy, u_input.b.zz), min(vec2<u32>(19546u, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), u_input.b.yy))), u_input.b.yz), 71017u);
    var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(1u, 1u), _wgslsmith_mult_u32(25232u, _wgslsmith_div_u32(abs(u_input.a), 1u)), 0u, ~0u), vec4<u32>(10429u, 1u, _wgslsmith_sub_u32(1u, min(51322u, func_1(vec3<i32>(-1i, -13139i, 44485i), 1u, vec3<f32>(var_2.x, var_2.x, -221f)))), ~(global0[_wgslsmith_index_u32(u_input.a << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)] % 32u), 29u)] & 12665u)));
    var var_5 = Struct_4(Struct_1(reverseBits(u_input.c)), -1263f, Struct_1(~(u_input.d >> (abs(u_input.a) % 32u))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, var_5.b, 1056f) * vec3<f32>(-483f, -1000f, -619f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-639f, 1000f, var_5.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-298f, var_5.b, var_5.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1290f, -559f, 741f), vec3<f32>(var_2.x, var_2.x, 169f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(36717i, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~11204u, 29u)], 29u)], _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(1u, 12507u, u_input.a) << (u_input.b % vec3<u32>(32u))), vec3<u32>(u_input.a | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], u_input.b.x, ~u_input.b.x))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), 29u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), 20256u), 29u)]), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(30272u, 6452u), select(u_input.b.xz, u_input.b.yx, true)), firstLeadingBit(u_input.b.zy)), vec2<u32>(0u, ~(u_input.a ^ 42937u))));
}

