struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: bool;

var<private> global2: i32 = 1i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_4(select(vec4<bool>(all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(trunc(910f)) == _wgslsmith_div_f32(215f, 1777f), true, true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), true), abs(1u), false, abs(_wgslsmith_sub_vec2_i32(max(u_input.b.ww, u_input.b.wy), _wgslsmith_sub_vec2_i32(u_input.a, u_input.b.wy)) & vec2<i32>(-44459i, ~global0[_wgslsmith_index_u32(arg_1.x, 11u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-759f, _wgslsmith_f_op_f32(f32(-1f) * -1716f)), vec2<f32>(1f, 1f), true)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-183f, 329f))))), -672f));
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, max(arg_0, -1i), abs(var_0.d.x) & min(var_0.d.x, -2147483647i), ~12134i), u_input.b));
    let var_4 = ~(~arg_1.ywy);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.x, 1f))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = true;
    let var_0 = vec3<f32>(arg_1.b, 745f, 1283f);
    let var_1 = !vec3<bool>(arg_0, _wgslsmith_f_op_f32(ceil(var_0.x)) == arg_1.b, !(_wgslsmith_f_op_f32(1425f - -634f) > _wgslsmith_f_op_f32(func_3(45583i, vec4<u32>(51568u, 3015u, 4294967295u, arg_1.c.x)))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_sub_i32(firstTrailingBit(global0[_wgslsmith_index_u32(var_2.a, 11u)]), u_input.b.x);
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.b, arg_2.b), _wgslsmith_f_op_f32(max(629f, arg_2.b)), _wgslsmith_f_op_f32(arg_2.b - -1090f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b, 1866f, -949f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(813f, arg_2.b, 2328f) * vec3<f32>(arg_2.b, 2691f, arg_2.b)))), arg_0.a.wzw)));
    global1 = arg_0.a.x;
    var var_1 = Struct_5(select(vec4<i32>(-1i, 1i, -28788i, -14297i), min(abs(abs(u_input.b)), u_input.b >> ((vec4<u32>(arg_2.c.x, arg_0.b, 8471u, 3004u) >> (vec4<u32>(arg_0.b, 33649u, arg_2.a, 36979u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(vec4<bool>(all(vec3<bool>(true, arg_0.a.x, arg_0.c)), true, true, true), vec4<bool>(true, any(arg_0.a.yx), true, true), select(!vec4<bool>(true, arg_0.a.x, false, true), select(arg_0.a, arg_0.a, vec4<bool>(arg_0.c, arg_0.a.x, arg_0.c, false)), true))));
    let var_2 = Struct_3(~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.c.zy, vec2<u32>(29671u, arg_0.b)), ~45378u), arg_0.b ^ func_2(arg_0.c, Struct_1(arg_2.a, arg_2.b, arg_2.c), 10120u).c.x, ~arg_2.c.x ^ 1u, 4294967295u), u_input.b, Struct_2(u_input.b), arg_2);
    let var_3 = var_2;
    return var_2.d;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> bool {
    var var_0 = arg_2;
    global0 = array<i32, 11>();
    var var_1 = func_2(all(select(arg_0.a.wy, arg_2.a.zx, any(vec2<bool>(false, var_0.a.x)))), arg_1, ~8582u);
    global0 = array<i32, 11>();
    var var_2 = var_1.c.xy;
    return arg_2.a.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_5 {
    var var_0 = arg_1.x;
    global1 = func_5(Struct_4(vec4<bool>(true, true, true, true), 0u, !any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), select(select(u_input.b.zx, vec2<i32>(-6719i, u_input.a.x), vec2<bool>(true, true)), -(vec2<i32>(-2147483647i, 2147483647i) | vec2<i32>(global0[_wgslsmith_index_u32(arg_1.x, 11u)], global0[_wgslsmith_index_u32(arg_1.x, 11u)])), select(19732i >= global0[_wgslsmith_index_u32(39122u, 11u)], any(vec3<bool>(true, true, true)), true))), func_4(Struct_4(vec4<bool>(select(true, false, false), true, false, arg_1.x >= 0u), arg_1.x, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)), vec2<i32>(1i, 20973i)), _wgslsmith_sub_vec2_i32(u_input.a, reverseBits(vec2<i32>(0i, 1i))), func_2(true, Struct_1(0u, _wgslsmith_f_op_f32(arg_2.x * arg_0.x), ~arg_1), _wgslsmith_mod_u32(1u, ~arg_1.x))), Struct_4(select(vec4<bool>(true, true, u_input.b.x >= u_input.b.x, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)), abs(min(39624u, ~arg_1.x)), !(-4952i > reverseBits(global0[_wgslsmith_index_u32(16974u, 11u)])), vec2<i32>(~(~u_input.b.x), _wgslsmith_mod_i32(countOneBits(global0[_wgslsmith_index_u32(arg_1.x, 11u)]), select(u_input.b.x, 27096i, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.zz));
    var_0 = abs(~_wgslsmith_mult_u32(1u, arg_1.x));
    var var_2 = Struct_2(-vec4<i32>(firstTrailingBit(0i), -1i, -(i32(-1i) * -3775i), global0[_wgslsmith_index_u32(11011u, 11u)]));
    return Struct_5(firstTrailingBit(vec4<i32>(~var_2.a.x | ~(-31506i), global0[_wgslsmith_index_u32(arg_1.x, 11u)], ~countOneBits(u_input.b.x), var_2.a.x & -var_2.a.x)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    global0 = array<i32, 11>();
    let var_0 = Struct_2(~abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.a, arg_1.b), vec4<i32>(4461i, u_input.a.x, 57252i, -14506i))));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, arg_1.a.x), _wgslsmith_mod_vec2_u32(arg_2.c.xx, vec2<u32>(arg_2.c.x, 27249u) & vec2<u32>(arg_2.c.x, 4294967295u)))), 11u)];
    let var_1 = arg_2.b;
    let var_2 = -709f;
    return any(vec4<bool>(!all(vec3<bool>(true, true, true)), true, !any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = Struct_4(select(vec4<bool>(_wgslsmith_add_i32(0i, u_input.a.x) == -global0[_wgslsmith_index_u32(37087u, 11u)], any(vec3<bool>(true, false, false)), func_6(func_1(vec3<f32>(-1000f, -2086f, -1157f), vec3<u32>(1u, 13853u, 0u), vec2<f32>(-305f, -2047f), -315f), Struct_3(vec4<u32>(7406u, 1u, 0u, 1u), vec4<i32>(35525i, 1i, global0[_wgslsmith_index_u32(29166u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), Struct_2(u_input.b), Struct_1(32236u, -1660f, vec3<u32>(5351u, 5059u, 19806u))), func_4(Struct_4(vec4<bool>(false, false, false, false), 4294967295u, true, u_input.b.ww), u_input.a, Struct_1(4294967295u, 194f, vec3<u32>(36472u, 21249u, 0u)))), func_6(func_1(vec3<f32>(822f, -1297f, 854f), vec3<u32>(0u, 0u, 76952u), vec2<f32>(430f, -286f), -1030f), Struct_3(vec4<u32>(42004u, 98543u, 4294967295u, 59179u), vec4<i32>(2147483647i, -42818i, 32217i, -2147483647i), Struct_2(u_input.b), Struct_1(4294967295u, 1736f, vec3<u32>(72236u, 5812u, 34411u))), func_4(Struct_4(vec4<bool>(true, false, false, true), 1u, false, vec2<i32>(global0[_wgslsmith_index_u32(1u, 11u)], 16812i)), vec2<i32>(var_0, global0[_wgslsmith_index_u32(1u, 11u)]), Struct_1(36012u, -561f, vec3<u32>(82558u, 4294967295u, 62304u))))), vec4<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_6(func_1(vec3<f32>(-2235f, -1656f, 607f), vec3<u32>(2066u, 44288u, 12717u), vec2<f32>(1000f, 2195f), 1258f), Struct_3(vec4<u32>(1u, 55102u, 0u, 4294967295u), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], -50049i, u_input.a.x, u_input.b.x), Struct_2(vec4<i32>(var_0, var_0, 0i, u_input.b.x)), Struct_1(1u, -1764f, vec3<u32>(17870u, 16953u, 4294967295u))), func_4(Struct_4(vec4<bool>(false, false, true, false), 4294967295u, false, u_input.b.xz), vec2<i32>(var_0, -27961i), Struct_1(72918u, -502f, vec3<u32>(0u, 52060u, 1u)))), any(vec2<bool>(true, true))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), 1u, false, u_input.a);
    var var_2 = Struct_4(!(!var_1.a), ~(~var_1.b), var_0 >= 22481i, vec2<i32>(var_0 << (var_1.b % 32u), reverseBits(var_0)));
    var_2 = Struct_4(select(!vec4<bool>(true, !var_2.a.x, true, var_1.c), !select(var_1.a, select(vec4<bool>(true, var_2.a.x, var_1.a.x, var_2.a.x), var_2.a, var_2.a.x), 1u > var_1.b), var_1.a), ~(~select(var_2.b, ~var_2.b, any(var_1.a.wx))), all(var_1.a.xy), _wgslsmith_clamp_vec2_i32(-u_input.b.yx, ~_wgslsmith_mod_vec2_i32(abs(var_1.d), var_2.d), vec2<i32>(var_2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 11u)], u_input.b.x), u_input.a) >> (~1u % 32u))));
    let var_3 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, 93158u, 1u), vec3<u32>(var_1.b, var_1.b, 1u)) | ~vec3<u32>(var_1.b, var_1.b, var_2.b)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 16750u, 1u), ~vec3<u32>(var_1.b, var_1.b, 60619u)), ((vec3<u32>(var_2.b, 80032u, 1u) << (vec3<u32>(4294967295u, var_1.b, 0u) % vec3<u32>(32u))) & vec3<u32>(var_2.b, 4294967295u, 33866u)) ^ func_4(Struct_4(vec4<bool>(false, var_2.a.x, false, true), 30387u, true, vec2<i32>(u_input.a.x, var_2.d.x)), vec2<i32>(var_0, var_1.d.x), func_2(var_2.a.x, Struct_1(var_2.b, 743f, vec3<u32>(16640u, var_1.b, var_2.b)), var_2.b)).c), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(92569u, 1u, 21470u, 1u) & vec4<u32>(var_1.b, 1u, var_2.b, 4294967295u), min(vec4<u32>(var_2.b, var_1.b, var_1.b, var_2.b), vec4<u32>(1u, 1u, var_2.b, 4294967295u))) >> (~_wgslsmith_div_u32(var_1.b, var_1.b) % 32u))), 11u)];
    var var_4 = abs(~(~select(u_input.b.xww, vec3<i32>(42756i, global0[_wgslsmith_index_u32(1u, 11u)], -16060i), var_1.a.x))) ^ u_input.b.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, 36288u), vec2<u32>(var_1.b, var_1.b)) | ~max(vec2<u32>(var_2.b, 38044u), vec2<u32>(var_1.b, var_2.b)), vec2<u32>(var_1.b >> (~0u % 32u), _wgslsmith_mult_u32(var_2.b, var_1.b))), var_2.b);
}

