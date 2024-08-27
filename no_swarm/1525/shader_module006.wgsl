struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-189f, Struct_1(vec4<f32>(1442f, -100f, -1122f, 1742f)), vec4<i32>(19285i, -1i, -53030i, 1i), vec3<i32>(13016i, 2147483647i, 3132i));

var<private> global1: array<u32, 7> = array<u32, 7>(82258u, 1008u, 0u, 50410u, 23338u, 0u, 0u);

var<private> global2: array<i32, 12> = array<i32, 12>(-1i, -53918i, 0i, -1i, -24619i, 12591i, -1i, 23237i, 10888i, 22850i, -44525i, -36697i);

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global1 = array<u32, 7>();
    global1 = array<u32, 7>();
    var var_0 = -select(_wgslsmith_clamp_vec4_i32(global0.c, min(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global0.c.x, u_input.a, -25270i), global0.c), -global0.c), ~_wgslsmith_mult_vec4_i32(global0.c, global0.c)), firstLeadingBit(vec4<i32>(reverseBits(0i), ~global0.d.x, u_input.e, min(global0.c.x, -10147i))), select(!any(vec3<bool>(true, false, arg_0)), true, (global0.b.a.x > 616f) && arg_0));
    var var_1 = Struct_2(global0.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(403f, global0.a) + _wgslsmith_div_f32(2192f, -252f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(global0.b.a.x - 2104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(-global0.b.a.x)))), global0.c, vec3<i32>(-firstLeadingBit(-14765i), global0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-1i, 17694i), global3.yx)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.b.a * global0.b.a));
    return ~(~u_input.d);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = array<i32, 12>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.d << (func_3(~global0.c.x > _wgslsmith_div_i32(131i, 43526i)) % vec2<u32>(32u)), ~(~u_input.b.yy)), 12u)];
    var var_1 = arg_0.a;
    var var_2 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), vec2<bool>(true, true), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    var var_3 = Struct_2(2014f, arg_0, max(global0.c, global0.c), abs(global0.c.yxx) | reverseBits(vec3<i32>(u_input.a, 9465i, -19647i) << (u_input.b % vec3<u32>(32u))));
    return min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x | ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~64592u, 6946u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2883u, 7u)], 7u)], _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), 7u)], 7u)], 7u)], firstTrailingBit(_wgslsmith_mod_u32(u_input.c, ~global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), 7u)])));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global2 = array<i32, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.b.a.yxy, global0.b.a.ywx))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a.x, 768f, global0.b.a.x) + _wgslsmith_f_op_vec3_f32(global0.b.a.yyz - vec3<f32>(585f, -297f, global0.a)))))));
    let var_1 = _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(16474i, min(7286i, 0i), ~global3.x, ~0i) | ~min(vec4<i32>(u_input.a, u_input.a, u_input.e, 0i), vec4<i32>(-494i, -47355i, global0.d.x, 5141i))), vec4<i32>(max(~_wgslsmith_mult_i32(9306i, global0.d.x), 1i | global3.x), ~firstLeadingBit(global2[_wgslsmith_index_u32(~33051u, 12u)]), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(func_2(global4[_wgslsmith_index_u32(u_input.b.x, 28u)]) >> (~0u % 32u), 12u)], -_wgslsmith_clamp_i32(global3.x, 0i, -1i)), ~1i));
    global4 = array<Struct_1, 28>();
    var var_2 = ~_wgslsmith_add_vec4_i32(global0.c, select(reverseBits(vec4<i32>(u_input.a, 60888i, 1i, global2[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_div_vec4_i32(vec4<i32>(65594i, global2[_wgslsmith_index_u32(11018u, 12u)], global0.c.x, u_input.e), vec4<i32>(var_1.x, global2[_wgslsmith_index_u32(0u, 12u)], 23772i, 0i)), select(!vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, false, arg_0, false), true)));
    return select(vec4<bool>(!any(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, false, arg_0), true)), false, true, arg_0), select(select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(true, true, false, arg_0), false)), !(!vec4<bool>(arg_0, true, arg_0, arg_0))), !vec4<bool>(arg_0 != true, !arg_0, any(vec3<bool>(true, arg_0, false)), false), vec4<bool>(arg_0, u_input.c != global1[_wgslsmith_index_u32(0u, 7u)], arg_0, arg_0)), select(!(!select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, false), arg_0)), select(!vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(any(vec2<bool>(false, arg_0)), false, false, arg_0), select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, false, arg_0), false), !vec4<bool>(arg_0, arg_0, arg_0, false), global0.d.x <= var_1.x)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_div_vec2_i32(~((global3.yz << (u_input.b.yy % vec2<u32>(32u))) | -global3.xy), vec2<i32>(_wgslsmith_add_i32(abs(global2[_wgslsmith_index_u32(u_input.d.x, 12u)]), global2[_wgslsmith_index_u32(u_input.d.x, 12u)]), global2[_wgslsmith_index_u32(1u, 12u)])), vec2<i32>(-2147483647i | ((i32(-1i) * -28780i) & _wgslsmith_dot_vec2_i32(global3.zy, global3.zz)), countOneBits(u_input.e)), !(!all(vec4<bool>(false, false, false, false))));
    var var_1 = select(func_1(any(vec4<bool>(any(vec3<bool>(true, false, false)), true, false, true))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), true);
    var_1 = !(!select(select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), all(vec4<bool>(var_1.x, var_1.x, true, true))), !(!vec4<bool>(var_1.x, var_1.x, true, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_1.x, var_1.x, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, true))));
    let var_2 = vec2<i32>(-77135i, -18069i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 947f, -206f, global0.b.a.x) - global0.b.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1952f, 766f, global0.b.a.x, global0.a))))), vec4<bool>(var_1.x || true, true, !select(true, true, false), true))));
    let var_4 = global0.b.a.x;
    var var_5 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(max(var_2, global0.d.xz) ^ abs(var_2), global3.zx, vec2<i32>(_wgslsmith_div_i32(var_0.x, ~10030i), -17077i)), global3.xx);
    let var_6 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a) + vec4<f32>(_wgslsmith_f_op_f32(sign(602f)), 1f, _wgslsmith_f_op_f32(-var_3.a.x), global0.a)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-global0.b.a.x))), 1696f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(433f, -301f, var_1.x)), _wgslsmith_f_op_f32(floor(-1092f))), _wgslsmith_f_op_f32(f32(-1f) * -508f)))));
    global2 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, global0.c.zxz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.b.a.zww))), _wgslsmith_f_op_vec3_f32(-global0.b.a.wzw)));
}

