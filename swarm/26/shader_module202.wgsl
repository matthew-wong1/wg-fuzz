struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 4> = array<u32, 4>(1u, 22485u, 21696u, 27220u);

var<private> global2: array<Struct_2, 20>;

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = true;
    var_0 = all(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(921f, arg_0.a.a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x));
    global3 = _wgslsmith_f_op_vec3_f32(round(arg_0.c.xxx));
    return true;
}

fn func_2() -> Struct_3 {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f * 2010f) * _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f))), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(873f, 390f)))));
    var var_0 = -firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-47273i, u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-27805i, u_input.a, u_input.a))) ^ ~vec3<i32>(0i, u_input.a, 0i));
    var var_1 = select(-44592i, _wgslsmith_mod_i32(u_input.a, -1i) ^ min(-68927i, ~var_0.x << (4294967295u % 32u)), !(!(!func_3(Struct_2(Struct_1(global3.x), vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(779f, global3.x, global3.x, -430f))))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, 1630f, global3.x), vec3<f32>(-1007f, global3.x, 233f))), vec3<f32>(659f, -728f, -452f)))))));
    let var_2 = global2[_wgslsmith_index_u32(~min(~4294967295u, ~(~(31363u ^ global1[_wgslsmith_index_u32(70535u, 4u)]))), 20u)];
    return Struct_3(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a - 826f) - _wgslsmith_f_op_f32(abs(var_2.c.x))) > -426f), var_2.a, var_2.a, Struct_1(1000f), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, -5073i, var_0.x, var_0.x), vec4<i32>(var_2.b.x, var_2.b.x, 0i, u_input.a) & vec4<i32>(-53499i, var_0.x, var_2.b.x, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_2.b.x, 18224i), ~vec4<i32>(-1i, -2147483647i, var_0.x, var_2.b.x)) | vec4<i32>(abs(2147483647i), min(var_2.b.x, -27898i), var_2.b.x, _wgslsmith_mod_i32(var_0.x, -2147483647i)), true & all(vec3<bool>(true, false, false))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(~6558u), 4u)];
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a + _wgslsmith_f_op_f32(select(-1049f, _wgslsmith_f_op_f32(-global3.x), all(vec4<bool>(true, arg_0.a.x, true, true))))) * -311f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1557f, arg_0.c.a, -143f != _wgslsmith_f_op_f32(-240f - arg_0.d.a))) + _wgslsmith_f_op_f32(min(func_2().d.a, arg_0.b.a))), -1000f);
    var_0 = _wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(12850u, 4u)], global1[_wgslsmith_index_u32(96057u, 4u)])) << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(1u, 4u)], 4294967295u, arg_0.a.x), 4u)], 4u)] % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(21700u, 4u)], 22160u), 4u)], 4u)]), 4u)], 4u)]);
    let var_1 = global2[_wgslsmith_index_u32(0u, 20u)];
    let var_2 = select(arg_0.a, arg_0.a, arg_0.a.x);
    return Struct_1(1057f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> vec3<f32> {
    var var_0 = ~vec4<u32>(0u & reverseBits(~arg_3), firstLeadingBit(4294967295u), arg_3, ~(9888u & _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 4294967295u)));
    var var_1 = true | (arg_2.a.x == !arg_2.a.x);
    let var_2 = select(func_2().a, func_2().a, !vec2<bool>(select(false, false, -1164f > arg_0.a), !(var_0.x < 4294967295u)));
    global1 = array<u32, 4>();
    let var_3 = arg_2.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.www)));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    global3 = _wgslsmith_f_op_vec3_f32(func_5(func_4(func_2()), Struct_2(Struct_1(global3.x), reverseBits(vec3<i32>(~(-16317i), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -18498i, u_input.a), vec3<i32>(u_input.a, u_input.a, 2577i)))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) - 374f), _wgslsmith_f_op_f32(ceil(-733f)), global3.x)), func_2(), _wgslsmith_div_u32(select(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(35696u, 0u), arg_0.yy)), _wgslsmith_f_op_f32(global3.x + global3.x) != _wgslsmith_f_op_f32(abs(-280f))), 0u | ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_0.x, 4u)], arg_0.x))));
    var var_0 = _wgslsmith_mod_u32(28145u, max(26491u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, arg_0.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], 76482u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 0u, arg_0.x, 4294967295u)) % 32u), 4u)], 1u)));
    let var_1 = select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false))), !select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), false);
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
    return false && !var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u | global1[_wgslsmith_index_u32(84961u, 4u)], global1[_wgslsmith_index_u32(~1u, 4u)]), 4u)], global1[_wgslsmith_index_u32(min(~global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(~14804u, 4u)]), 4u)]) > 1u, any(select(vec3<bool>(u_input.a <= -1i, true, func_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(55373u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]))), vec3<bool>(true, true, true), true)), false, true);
    let var_1 = vec4<u32>(0u, ~global1[_wgslsmith_index_u32(countOneBits(35279u), 4u)], 1u, (~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)]) & 22497u) >> (0u % 32u));
    let var_2 = var_1.x;
    var var_3 = Struct_2(func_4(func_2()), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 19689i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a))) ^ ~vec3<i32>(u_input.a, 50819i, min(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_3(var_0.wy, Struct_1(global3.x), Struct_1(global3.x), Struct_1(global3.x), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 1i))), global2[_wgslsmith_index_u32(62101u | global1[_wgslsmith_index_u32(12250u, 4u)], 20u)], func_2(), 1u)).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1043f, -491f))), func_2().b.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 1000f, -1091f) - vec4<f32>(1064f, global3.x, -1357f, global3.x))))));
    var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-global3.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f * -1000f) + global3.x), any(select(select(var_0.zwx, vec3<bool>(false, var_0.x, true), true), select(!vec3<bool>(var_0.x, true, true), !var_0.wzy, var_0.xxw), var_0.wzx)), false);
    let var_4 = var_1.xz;
    var_0 = select(!vec4<bool>(all(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(var_0.x, true, false, var_0.x), false)), all(!var_0.zw), !(var_0.x | false), var_0.x), !vec4<bool>(var_0.x, !var_0.x, !any(vec4<bool>(var_0.x, var_0.x, true, false)), any(vec2<bool>(false, false))), !select(vec4<bool>(var_0.x, func_2().a.x, -671i > u_input.a, true), vec4<bool>(false, var_0.x, var_0.x && false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.x, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-29502i, var_3.b.x, u_input.a, 6363i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), ~vec4<i32>(2147483647i, var_3.b.x, 1i, -1i)), -1i, firstLeadingBit(_wgslsmith_add_i32(-2147483647i, u_input.a))), vec3<i32>(countOneBits(-1i ^ var_3.b.x), u_input.a, var_3.b.x)), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.x, var_2), var_1.x), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, var_2) >> (var_4.x % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_4.x, 36138u), vec3<u32>(var_1.x, var_4.x, var_1.x)))));
}

