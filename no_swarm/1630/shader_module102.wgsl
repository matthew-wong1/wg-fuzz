struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(abs(arg_0.a));
    let var_0 = Struct_2(true, -arg_0.c, Struct_1(arg_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.a, vec3<f32>(-544f, -606f, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1769f)) - _wgslsmith_f_op_vec3_f32(select(arg_1, vec3<f32>(1000f, arg_0.b.x, 1000f), vec3<bool>(false, false, true))))), arg_0.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1008f), arg_0.b.x, 1208f), _wgslsmith_f_op_vec3_f32(sign(arg_1)), arg_0.c));
    global0 = _wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, select(select(select(!vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, false, var_0.a), false), select(vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, false, true), var_0.a)), !vec3<bool>(false, var_0.a, true), !var_0.a), vec3<bool>(all(vec4<bool>(false, var_0.a, var_0.a, var_0.a)), var_0.a, var_0.a), _wgslsmith_div_u32(~u_input.a, 0u) <= 3357u)));
    let var_1 = u_input.a;
    global0 = _wgslsmith_f_op_vec3_f32(arg_1 + arg_0.b);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-global0.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = !any(vec3<bool>(true, true, false));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1001f, global0.x), vec2<f32>(230f, global0.x)), vec2<f32>(2866f, global0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xz)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-481f, -698f, global0.x), vec3<f32>(-1499f, global0.x, global0.x), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1023f, -298f), vec3<f32>(global0.x, -960f, 1000f))), -vec2<i32>(7904i, 2147483647i)))), _wgslsmith_f_op_f32(-global0.x))));
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~(~(~u_input.a))), max(1u, 0u << (_wgslsmith_div_u32(~u_input.a, 0u) % 32u)));
    return Struct_3(all(!vec4<bool>(false, true, all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, false, false)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2914f - var_1.x), -249f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(min(1124f, -529f))), vec3<f32>(-456f, -175f, var_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, i32(-1i) * -34689i), select(~vec2<i32>(-2147483647i, -34242i), vec2<i32>(31321i, 7365i), global0.x <= var_1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1212f, global0.x, global0.x), vec3<f32>(var_1.x, global0.x, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 431f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -525f, global0.x) * vec3<f32>(global0.x, global0.x, -1951f)))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-25332i, 27734i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-42523i, -13363i), vec2<i32>(47498i, -2147483647i), vec2<i32>(33949i, -16893i))))), _wgslsmith_mult_i32(i32(-1i) * -3132i, -67468i | (~(-35297i) << (var_2.x % 32u))), vec3<bool>(true, true, false));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    return -1237f;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - 718f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(round(arg_0.b.x)))), -744f));
    let var_0 = (_wgslsmith_f_op_f32(func_4(vec2<u32>(4294967295u, _wgslsmith_mult_u32(1u, u_input.a)), global0.x, func_2())) > global0.x) && any(vec3<bool>(true, true, arg_0.c.x > max(arg_0.c.x, -73617i)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 474f, arg_1.x))) - arg_0.b)))));
    global0 = arg_0.a;
    let var_1 = -7007i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<f32>(global0.x, global0.x, 623f), vec3<f32>(global0.x, global0.x, global0.x), vec2<i32>(-26831i, 1i)), vec3<f32>(-1096f, global0.x, 2322f))), vec3<f32>(-1000f, 2177f, 837f)) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1850f, 809f, global0.x), vec3<f32>(global0.x, global0.x, -759f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec3_f32(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-528f, 238f, global0.x), vec3<f32>(-637f, global0.x, global0.x)))), -max(vec2<i32>(0i, -22305i), vec2<i32>(16664i, 4316i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-316f * global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-732f, global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(1000f, global0.x, 454f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, -287f, -542f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(128f, global0.x, -919f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1563f, _wgslsmith_f_op_f32(global0.x - -559f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -777f, -535f)))))));
    global0 = vec3<f32>(1719f, -532f, _wgslsmith_f_op_f32(step(795f, _wgslsmith_f_op_f32(-global0.x))));
    var var_0 = vec3<i32>(min(firstLeadingBit(_wgslsmith_sub_i32(-37558i, -1i)), 0i), reverseBits((-2147483647i << (0u % 32u)) >> (1u % 32u)), ~2147483647i) & _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-25041i, 1i, -32538i), vec3<i32>(-1i, -18129i, -54665i), vec3<bool>(true, false, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(-36020i, -3008i, 2147483647i), vec3<i32>(1i, 1i, 15824i))) >> (~vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-3303i, ~0i, -1i), vec3<i32>(1i, 1i, 1i)));
    let var_1 = -(vec3<i32>(2147483647i, firstTrailingBit(var_0.x), 1i >> (u_input.a % 32u)) >> (~vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) >> ((_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(4294967295u, u_input.a, u_input.a & u_input.a)) << ((vec3<u32>(0u, abs(4294967295u), select(1u, 5583u, false)) << ((vec3<u32>(u_input.a, 4294967295u, u_input.a) | reverseBits(vec3<u32>(1u, u_input.a, u_input.a))) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-274f, -553f, global0.x))) + vec3<f32>(1f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(852f, global0.x)))), select(max(countOneBits(vec3<u32>(u_input.a, u_input.a, 39694u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 23720u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), abs(~vec3<u32>(62899u, 25793u, u_input.a))), vec3<u32>(select(u_input.a ^ 84067u, min(1u, u_input.a), true), (u_input.a << (u_input.a % 32u)) ^ _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_u32(~(~countOneBits(vec3<u32>(20302u, u_input.a, u_input.a))), ~(~vec3<u32>(1u, u_input.a, u_input.a))), reverseBits(-(-38213i ^ -var_1.x)));
}

