struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global2: array<f32, 24>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) >> (min(~(~u_input.a.x), 1u) % 32u), countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 9178u, u_input.a.x, 1u), vec4<u32>(27625u, 1u, 3128u, 1u), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)))), true, _wgslsmith_dot_vec3_u32(reverseBits(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 1u, 4294967295u) << (vec3<u32>(1033u, u_input.a.x, 1u) % vec3<u32>(32u))), ~vec3<u32>(u_input.a.x, 30352u, u_input.a.x), vec3<u32>(~u_input.a.x, 1u, 19223u >> (u_input.a.x % 32u)))));
    let var_1 = _wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, 14968u, var_0.b.x, var_0.b.x)), 4294967295u | u_input.a.x), 24u)]))));
    global1 = array<vec3<bool>, 24>();
    global1 = array<vec3<bool>, 24>();
    let var_2 = Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-2243i, firstLeadingBit(~2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-3913i, -21809i, 30395i), vec3<i32>(6422i, -1i, -31739i), true))), max(vec3<i32>(-14746i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(55974i, 6492i), vec2<i32>(48184i, -9300i))), vec3<i32>(1i, 1i, 1i))), var_0, any(select(select(!vec4<bool>(var_0.c, false, false, var_0.c), !vec4<bool>(false, true, var_0.c, var_0.c), !var_0.c), vec4<bool>(false | var_0.c, false, var_0.c, false), select(!var_0.c, any(vec4<bool>(false, var_0.c, var_0.c, false)), var_0.c))));
    return ~_wgslsmith_div_u32(1u, u_input.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_sub_vec3_i32(select(vec3<i32>(4474i, -2147483647i, 16864i) >> (vec3<u32>(0u, 1u, u_input.a.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-1i, -17214i, -2147483647i)), true) & (vec3<i32>(-1i) * -vec3<i32>(2147483647i, 31862i, 2147483647i)), _wgslsmith_add_vec3_i32(-vec3<i32>(18056i, 29316i, 11703i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-7207i, -5981i, 0i)))), Struct_1(u_input.a.x, vec4<u32>(u_input.a.x & u_input.a.x, ~func_3(), _wgslsmith_div_u32(abs(25837u), u_input.a.x), ~4294967295u), all(vec4<bool>(true, true, true, true)), ~(~85608u)), true);
    global2 = array<f32, 24>();
    let var_1 = !(!vec2<bool>(!var_0.b.c, true));
    let var_2 = vec4<i32>(0i, var_0.a.x, countOneBits(var_0.a.x), -30976i);
    return Struct_2(vec3<i32>(var_2.x, 2147483647i, -13610i), var_0.b, any(select(select(select(vec4<bool>(true, var_1.x, var_0.b.c, var_1.x), vec4<bool>(var_1.x, var_0.c, true, var_1.x), false), vec4<bool>(true, var_1.x, false, var_0.c), false), vec4<bool>(var_0.b.c, var_1.x, var_0.a.x != var_2.x, false), !select(vec4<bool>(var_1.x, var_0.b.c, false, var_0.b.c), vec4<bool>(var_1.x, var_1.x, false, true), true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -1140f;
    global0 = -2147483647i >> (arg_0.b.d % 32u);
    let var_1 = global2[_wgslsmith_index_u32(~u_input.a.x, 24u)];
    let var_2 = Struct_3(Struct_1(~16141u, _wgslsmith_mod_vec4_u32(arg_2.b, ~vec4<u32>(1u, 1u, 1u, 1u)), any(select(vec4<bool>(false, true, false, arg_0.c), select(vec4<bool>(arg_0.b.c, true, arg_2.c, arg_2.c), vec4<bool>(false, true, arg_2.c, true), vec4<bool>(arg_0.b.c, false, true, true)), true)), 0u), select(vec3<bool>(any(vec2<bool>(arg_0.c, arg_2.c)), arg_2.c, arg_2.c), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29991u, 43180u, 29547u), arg_0.b.b.yzx), 24u)], !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, arg_2.a), 24u)], true), !(!(arg_0.b.c || arg_0.b.c))));
    var var_3 = _wgslsmith_div_u32(~u_input.a.x, ~(~arg_2.d));
    return Struct_1(~(20483u | (_wgslsmith_div_u32(51762u, 1779u) | var_2.a.d)), ~vec4<u32>(max(func_3(), 4294967295u), 4294967295u, max(~4294967295u, 4294967295u), ~(~74209u)), all(!select(vec4<bool>(true, arg_2.c, arg_2.c, true), select(vec4<bool>(arg_0.b.c, arg_0.c, var_2.a.c, arg_0.c), vec4<bool>(var_2.a.c, arg_2.c, var_2.b.x, false), vec4<bool>(true, arg_0.b.c, true, true)), arg_2.c)), var_2.a.a);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_3(func_4(func_2(), vec4<i32>(-1i) * -vec4<i32>(17279i, -1i, 0i, 33763i), func_2().b), !global1[_wgslsmith_index_u32(~(~(~88826u)), 24u)]);
    global2 = array<f32, 24>();
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a, var_0.a.b.ww));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 24u)]) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.a.d, 24u)])), 1f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(2350f * global2[_wgslsmith_index_u32(4294967295u, 24u)]))))));
    return var_0.a.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = Struct_2(select(firstTrailingBit(abs(select(vec3<i32>(-53877i, -27375i, 0i), vec3<i32>(-1i, 2147483647i, -1i), global1[_wgslsmith_index_u32(arg_1.x, 24u)]))), vec3<i32>(-1i, 52431i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -32745i, -2147483647i, 71357i)), vec4<i32>(2147483647i, -34323i, 0i, -1i))), (1u >= _wgslsmith_sub_u32(55684u, arg_0.x)) || (~u_input.a.x == _wgslsmith_mod_u32(1u, u_input.a.x))), func_4(func_2(), vec4<i32>(min(func_2().a.x, -18657i), ~_wgslsmith_add_i32(0i, 7778i), _wgslsmith_mod_i32(-1i, -4624i), reverseBits(_wgslsmith_mod_i32(-2147483647i, 1i))), Struct_1(0u, firstLeadingBit(abs(vec4<u32>(u_input.a.x, arg_0.x, 70264u, u_input.a.x))), func_4(func_2(), -vec4<i32>(44998i, 23389i, 0i, 1i), func_2().b).c, ~u_input.a.x)), true);
    let var_1 = 116728i;
    let var_2 = 6602u;
    var var_3 = ~(~_wgslsmith_add_u32(arg_1.x, 23946u));
    global0 = 11395i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2[_wgslsmith_index_u32(68374u, 24u)], _wgslsmith_f_op_f32(-1f)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 259f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 24>();
    global0 = 1i;
    var var_0 = 3235i;
    var_0 = ~_wgslsmith_sub_i32(-2147483647i << (u_input.a.x % 32u), -1i);
    global0 = -4198i;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(vec4<u32>(u_input.a.x, u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x ^ u_input.a.x)) << ((vec4<u32>(1u, 15340u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 41656u)) | _wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(28136u, u_input.a.x, 0u, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), select(func_1(), firstLeadingBit(vec4<u32>(1u, u_input.a.x, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)))), select(vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), vec4<bool>(any(vec4<bool>(false, false, false, false)), u_input.a.x != u_input.a.x, true, true), _wgslsmith_f_op_f32(min(-851f, global2[_wgslsmith_index_u32(4294967295u, 24u)])) > _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 24u)]))))));
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -45125i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1916i, -33405i, 27031i, 27121i), vec4<i32>(1i, 0i, 1i, -2147483647i)), -12741i), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, -7469i, 0i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))), max(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-58312i, 47556i, -8901i, -2147483647i), vec4<i32>(59756i, -2147483647i, -1i, 55395i)), firstTrailingBit(vec4<i32>(-8648i, -13690i, 0i, -2147483647i))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-59832i, -2147483647i, -4253i, 0i)), vec4<i32>(1i, 1i, 1i, 1i)))) | _wgslsmith_dot_vec2_i32(-(~(~vec2<i32>(2147483647i, 2147483647i))), ~func_2().a.xx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstLeadingBit(~vec4<u32>(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), select(17842u, u_input.a.x, false), ~u_input.a.x)), 2147483647i, ~(~u_input.a));
}

