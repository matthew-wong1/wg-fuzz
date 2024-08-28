struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), 1i, -3130i);

var<private> global1: array<f32, 28>;

var<private> global2: Struct_2;

var<private> global3: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = abs(max(reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global2.b.x, -2147483647i, -1i), vec4<i32>(-2147483647i, 2466i, global2.b.x, global0.x))), select(-(~vec4<i32>(-1i, global0.x, -1i, global0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.b.x, 1i, 1i, global2.b.x), reverseBits(vec4<i32>(global0.x, global0.x, global0.x, global2.b.x))), vec4<bool>(true, true, true, true))));
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_div_u32(~(~64665u), _wgslsmith_clamp_u32(1u, arg_0.x, 4294967295u)));
    global2 = Struct_2(abs(~(abs(global2.c) & _wgslsmith_dot_vec3_u32(arg_0.zyx, vec3<u32>(0u, 1u, 0u)))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -global2.b, vec3<i32>(global2.b.x | global2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, global0.x, global0.x, global2.b.x), vec4<i32>(global0.x, 17757i, 29766i, global0.x)), firstTrailingBit(global2.b.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(~var_0), arg_0.x), _wgslsmith_div_u32(arg_0.x, ~(~arg_0.x))));
    return !vec4<bool>(1i < _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(37171i, global2.b.x)), true, global0.x > -firstLeadingBit(-1i), select(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), true));
}

fn func_2() -> vec2<bool> {
    var var_0 = !vec4<bool>(!(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) < ~global2.c), true, all(vec2<bool>(true, true)), _wgslsmith_div_f32(515f, global1[_wgslsmith_index_u32(4294967295u >> (global2.a % 32u), 28u)]) > global1[_wgslsmith_index_u32(min(reverseBits(global2.c), ~global2.a), 28u)]);
    global2 = Struct_2(~33705u, vec3<i32>(global0.x, -(~global2.b.x >> (~0u % 32u)), min(global0.x, global0.x)), global2.a);
    var var_1 = ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, global2.a, reverseBits(54244u)), global2.a));
    let var_2 = select(vec3<bool>(!(!(1u > global2.c)), any(vec2<bool>(global1[_wgslsmith_index_u32(50715u, 28u)] <= global1[_wgslsmith_index_u32(4294967295u, 28u)], !var_0.x)), var_0.x), select(!(!var_0.zyy), vec3<bool>(true, all(select(var_0.zz, vec2<bool>(false, var_0.x), var_0.wz)), false), true), true);
    var var_3 = !select(select(select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_2.x, true, var_0.x, false), vec4<bool>(var_2.x, true, var_2.x, true)), !vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(func_3(vec4<u32>(global2.c, 0u, 21029u, 38565u)), select(vec4<bool>(true, false, var_2.x, var_0.x), vec4<bool>(var_2.x, false, true, var_0.x), vec4<bool>(false, true, var_2.x, var_2.x)), !var_2.x), !var_0.x), func_3(~vec4<u32>(global2.c, 0u, u_input.a.x, 70589u)), vec4<bool>(false, true, all(!vec3<bool>(var_2.x, var_2.x, false)), true));
    return var_2.xz;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = ~(-17467i);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -410f, 987f))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - global1[_wgslsmith_index_u32(73505u, 28u)]))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.yxy)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c, 1u), 28u)] * _wgslsmith_f_op_f32(max(1480f, -382f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f * global1[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, arg_0.x))))), true || (all(vec4<bool>(true, true, true, true)) != true)));
    let var_2 = !func_2();
    var var_3 = 1592f;
    global3 = select(20784i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(0i, 24042i, 0i)), ~global2.b, vec3<i32>(-1i, global0.x, 2147483647i)) & min(global2.b << (vec3<u32>(u_input.a.x, 4294967295u, 46203u) % vec3<u32>(32u)), global0.yyy), vec3<i32>(-global0.x, ~(2147483647i << (global2.c % 32u)), reverseBits(0i))), !(!(!var_2.x)) || true);
    return Struct_2(_wgslsmith_mod_u32(2945u, select(u_input.a.x, ~1u, true) >> (0u % 32u)), select(~global2.b, abs(min(_wgslsmith_mult_vec3_i32(global2.b, vec3<i32>(global0.x, global2.b.x, global2.b.x)), -global2.b)), !var_2.x), min(global2.a, max(firstLeadingBit(u_input.a.x), global2.a ^ _wgslsmith_div_u32(global2.c, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(global2.c, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]) - vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(global2.a, 28u)], -635f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(global2.a, 28u)], global1[_wgslsmith_index_u32(global2.c, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)]) * vec4<f32>(216f, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(global2.a, 28u)], 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, global1[_wgslsmith_index_u32(global2.a, 28u)], global1[_wgslsmith_index_u32(40152u, 28u)], 1000f)))))));
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_0.c, 48919u, 1u), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 12636u, var_0.a)), vec4<u32>(u_input.a.x, global2.c, global2.c, u_input.a.x), ~vec4<u32>(35888u, u_input.a.x, u_input.a.x, 13554u)), ~(~vec4<u32>(51389u, var_0.c, var_0.c, var_0.a))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(var_0.a, 15269u, 0u, 20946u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(12735u, u_input.a.x, u_input.a.x, global2.a), ~vec4<u32>(var_0.a, global2.c, global2.a, 4294967295u)) % vec4<u32>(32u))));
    var var_2 = Struct_3(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_1.a.wzw), ~min(var_1.a.wwz, var_1.a.xwz)));
    let var_3 = _wgslsmith_mod_i32(global2.b.x, 1i);
    var_2 = Struct_3(reverseBits(4179u));
    var var_4 = vec3<bool>(!select(select(select(true, true, false), func_2().x, true), false, !all(vec3<bool>(true, false, false))), 27915u == _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 38840u), var_1.a.ywx), ~vec3<u32>(47005u, u_input.a.x, 4294967295u)), !any(vec3<bool>(true, true, all(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~var_2.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.a, global2.a, 14290u), vec4<u32>(var_1.a.x, global2.c, 71653u, global2.c)), ~vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_2.a)), ~(~2533u), var_2.a)), ~0i, vec2<u32>(max(global2.c, 56631u), ~abs(_wgslsmith_mult_u32(var_2.a, 4294967295u))));
}

