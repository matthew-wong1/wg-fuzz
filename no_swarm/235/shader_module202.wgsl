struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(16111u, 0u);

var<private> global1: i32;

var<private> global2: array<u32, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    global0 = firstLeadingBit(~firstTrailingBit(~(~vec2<u32>(4294967295u, 0u))));
    global2 = array<u32, 12>();
    var var_0 = Struct_5(abs(arg_0));
    var var_1 = all(vec3<bool>(firstLeadingBit(reverseBits(u_input.c.x)) >= 40988i, any(vec2<bool>(true, arg_1.x)), ~global0.x > 1678u));
    global1 = -28802i;
    return ~var_0.a;
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(firstLeadingBit(~u_input.b.x), ~_wgslsmith_mult_i32(u_input.b.x, ~u_input.a.x)), -1i);
    global1 = u_input.a.x;
    var var_0 = max(vec2<u32>(67290u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, func_3(global2[_wgslsmith_index_u32(global0.x, 12u)], vec3<bool>(false, true, true), Struct_4(vec3<i32>(u_input.a.x, u_input.c.x, -16286i)))), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 58603u, 1u), vec3<u32>(26094u, 28116u, global0.x)), 12u)], 12u)], global0.x))), vec2<u32>(0u, global2[_wgslsmith_index_u32(firstLeadingBit(func_3(global2[_wgslsmith_index_u32(1u, 12u)] ^ global2[_wgslsmith_index_u32(global0.x, 12u)], vec3<bool>(true, true, true), Struct_4(u_input.c))), 12u)]));
    global0 = min(vec2<u32>(~0u, _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 31558u), vec2<u32>(var_0.x, 39006u))), 42562u)), ~(~abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100900u, 12u)], 12u)], 0u))));
    let var_1 = countOneBits(~(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], var_0.x, var_0.x)) << (~select(max(vec3<u32>(global0.x, 1u, var_0.x), vec3<u32>(global0.x, 1u, 0u)), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 12u)], 12u)], 41084u, global0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)) % vec3<u32>(32u)));
    return Struct_2(countOneBits(select(~(6887u ^ var_0.x), var_1.x, any(vec2<bool>(true, true)))), min(_wgslsmith_div_i32(1i, u_input.a.x), -3157i), Struct_1(vec3<f32>(231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1461f * 1678f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(659f)) * _wgslsmith_f_op_f32(-307f - -913f))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f * _wgslsmith_f_op_f32(trunc(-158f))))), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(-683f)), _wgslsmith_div_f32(-145f, 576f), 852f))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1191f + -1325f), -167f, true)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    global1 = u_input.c.x;
    let var_0 = true;
    global2 = array<u32, 12>();
    global1 = -1559i;
    global1 = 1i;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, -1265f, 175f) - _wgslsmith_f_op_vec3_f32(arg_2.d.a * arg_2.c.a))))), false, _wgslsmith_f_op_f32(-511f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-459f, arg_3.x, arg_2.d.b))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1085f, arg_3.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    global2 = array<u32, 12>();
    let var_0 = func_2();
    var var_1 = select(select(~vec3<i32>(u_input.a.x ^ u_input.b.x, -2048i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.c)), _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(14581i, u_input.a.x, -28269i), vec3<i32>(u_input.c.x, 18447i, var_0.b)), vec3<i32>(-var_0.b, var_0.b >> (global2[_wgslsmith_index_u32(21882u, 12u)] % 32u), 2147483647i)), select(!(!vec3<bool>(arg_0.b, true, arg_0.b)), !select(vec3<bool>(true, true, arg_0.b), vec3<bool>(true, false, false), false), vec3<bool>(!var_0.c.b, false, all(vec3<bool>(true, false, arg_0.b))))), reverseBits(vec3<i32>(-1i) * -firstTrailingBit(u_input.c)), true);
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.c, _wgslsmith_f_op_f32(trunc(var_2.d.a.x)))));
    return Struct_2(1u, -21909i, var_0.c, var_0.c);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(global2[_wgslsmith_index_u32(28441u, 12u)] ^ ~global2[_wgslsmith_index_u32(12241u, 12u)], global0.x);
    var var_1 = func_5(func_4(Struct_5(min(_wgslsmith_div_u32(0u, global0.x), ~0u)), arg_0, func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(866f, 889f, -1227f, 635f), vec4<f32>(-1000f, -222f, -401f, -1411f), vec4<bool>(arg_0.x, arg_0.x, false, true))))))), firstLeadingBit(~vec4<u32>(4294967295u, ~global2[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_add_u32(4294967295u, 0u), 4294967295u)));
    var var_2 = var_1.d;
    let var_3 = var_2.b;
    var var_4 = Struct_3(u_input.c.zx);
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = Struct_4(u_input.a);
    let var_1 = Struct_4(arg_3.a);
    var var_2 = reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~4294967295u, ~arg_0.a), 12u)], _wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(arg_0.a, 1u, 2106u, arg_0.a)), abs(vec4<u32>(arg_0.a, 17780u, global0.x, 1u))), vec4<u32>(~1u, 4547u ^ global0.x, arg_0.a, global0.x)), 4294967295u, ~min(1u, ~92501u)));
    let var_3 = vec4<u32>(global2[_wgslsmith_index_u32(~global0.x & (0u ^ _wgslsmith_div_u32(var_2.x, 38291u)), 12u)], countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_2.yx, ~var_2.yy), select(reverseBits(var_2.wz), ~var_2.zx, vec2<bool>(true, false)))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, 0u), arg_0.a), var_2.x);
    var var_4 = arg_0.d;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(100f, arg_0.d.c, var_4.c, 599f), vec4<f32>(var_4.a.x, -870f, arg_0.d.c, 1577f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, 746f, -1720f, var_4.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1889f, -195f, -948f, var_4.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, var_4.c, -1571f)))))));
}

fn func_7(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = ~(-reverseBits(~(~arg_0.a)));
    return ~abs(abs(~vec4<u32>(1u, 144991u, 0u, 2234u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select((vec4<u32>(global0.x, global0.x, 0u, 26028u) | vec4<u32>(global2[_wgslsmith_index_u32(28917u, 12u)], 0u, 140979u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54750u, 12u)], 12u)], 12u)], 12u)], 12u)])) << (~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], global0.x, global0.x, 30706u) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(0u, 12u)], 53126u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 12u)], 12u)]), vec4<u32>(65843u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16265u, 12u)], 12u)], global0.x, global0.x)), max(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], 72285u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30578u, 12u)], 12u)], 13215u), vec4<u32>(44598u, global0.x, 4294967295u, global0.x)), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, any(vec4<bool>(true, false, true, true)))) << (func_7(Struct_3(vec2<i32>(~(-15458i), -52222i)), _wgslsmith_f_op_vec4_f32(func_6(func_1(vec3<bool>(true, true, true)), ~0i, Struct_3(max(vec2<i32>(u_input.b.x, u_input.c.x), vec2<i32>(u_input.b.x, u_input.a.x))), Struct_4(max(u_input.a, u_input.c)))), vec3<u32>(global0.x & global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(36947u, 12u)] & 69340u, func_2().a) & (vec3<u32>(3167u, 4294967295u, 4294967295u) & max(vec3<u32>(109441u, global0.x, 13140u), vec3<u32>(4294967295u, global0.x, 10111u)))) % vec4<u32>(32u));
    global2 = array<u32, 12>();
    global2 = array<u32, 12>();
    let var_1 = Struct_5(49784u | firstLeadingBit(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~3705u, 12u)], 1u | var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + -285f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1706f)))), _wgslsmith_f_op_f32(trunc(-1747f)))), 0u, vec3<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-73804i, -1i, u_input.a.x, -2147483647i), vec4<i32>(u_input.c.x, 6385i, u_input.a.x, 2147483647i)), vec4<i32>(u_input.c.x, u_input.b.x, -32654i, 1i), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.b.x, -22083i, u_input.b.x, u_input.a.x))), 14204i, u_input.b.x), ~_wgslsmith_div_u32(min(_wgslsmith_add_u32(var_1.a, 73290u), ~global2[_wgslsmith_index_u32(var_0.x, 12u)]), global0.x));
}

