struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    var var_0 = ~(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(arg_0.b), arg_0.b), arg_0.b | arg_0.b));
    var var_1 = abs(min(vec4<i32>(-1i) * -(~arg_0.b), vec4<i32>(u_input.d.x, 1i, firstLeadingBit(arg_0.b.x), 1i)));
    global0 = array<vec4<f32>, 8>();
    return _wgslsmith_f_op_f32(-arg_0.c.b);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(1u, 8u)]));
    var var_1 = 2147483647i;
    var_1 = 15720i;
    let var_2 = -1314f;
    let var_3 = Struct_1(countOneBits(~_wgslsmith_div_u32(54058u, arg_0)) & ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(func_3(Struct_3(0u, vec4<i32>(-10282i, -2147483647i, 0i, u_input.d.x), Struct_1(1u, -1458f, u_input.b.zyx, u_input.e)), _wgslsmith_f_op_f32(var_2 + var_0.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, var_2)))), reverseBits(vec3<u32>(u_input.c, ~arg_0, 4294967295u)), _wgslsmith_add_u32(~9384u, _wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(14730u, _wgslsmith_sub_u32(u_input.b.x, global1.x), _wgslsmith_clamp_u32(arg_0, 4294967295u, 4294967295u)))));
    return !any(!select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x), true));
}

fn func_1() -> Struct_4 {
    var var_0 = !vec2<bool>(true, func_2(_wgslsmith_sub_u32(~u_input.c, ~u_input.a), vec2<bool>(true, true)));
    var var_1 = Struct_5(firstTrailingBit(firstTrailingBit(reverseBits(u_input.b.zyw) >> (vec3<u32>(u_input.c, 1u, 1u) % vec3<u32>(32u)))), !select(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !(!vec4<bool>(false, var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(-909f + -1256f), ~vec3<i32>(reverseBits(_wgslsmith_add_i32(u_input.d.x, u_input.d.x)), max(u_input.d.x >> (global1.x % 32u), -u_input.d.x), 1i));
    let var_2 = -(~firstLeadingBit(vec2<i32>(33845i, 25478i)) | ~(~vec2<i32>(var_1.d.x, var_1.d.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, var_1.c))), vec2<f32>(878f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, -1905f), vec2<f32>(var_1.c, 688f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, var_1.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(157f, -2642f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, _wgslsmith_f_op_f32(trunc(-987f)))));
    var var_4 = 1i;
    return Struct_4(-1030f, Struct_1(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2006f))), countOneBits(~_wgslsmith_sub_vec3_u32(u_input.b.zxy, vec3<u32>(var_1.a.x, global1.x, var_1.a.x))), u_input.a), Struct_2(Struct_1(0u, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(942f)), all(var_1.b))), vec3<u32>(0u, global1.x, var_1.a.x) ^ select(var_1.a, vec3<u32>(1u, 4294967295u, 13055u), vec3<bool>(true, var_0.x, true)), 19827u), Struct_1(_wgslsmith_add_u32(~3968u, firstLeadingBit(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -337f), select(~vec3<u32>(global1.x, u_input.c, global1.x), var_1.a, var_1.b.xww), _wgslsmith_add_u32(reverseBits(71378u), _wgslsmith_mult_u32(72609u, var_1.a.x))), global0[_wgslsmith_index_u32(firstLeadingBit(global1.x), 8u)], vec4<u32>(var_1.a.x, u_input.c, var_1.a.x, 8002u)));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    global1 = vec2<u32>(26496u, _wgslsmith_sub_u32(u_input.b.x, ~644u));
    let var_0 = global0[_wgslsmith_index_u32(~global1.x | arg_2, 8u)];
    global0 = array<vec4<f32>, 8>();
    let var_1 = select(vec3<bool>(all(vec4<bool>(true, all(vec2<bool>(true, true)), true, true)), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true), vec3<bool>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(arg_1.c.c.x * var_0.x))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1215f, -606f)), var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-arg_1.a)) < _wgslsmith_f_op_f32(ceil(508f)), all(vec4<bool>(false, true, true, false))), all(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true)))));
    let var_2 = arg_1;
    return Struct_3(var_2.c.a.d, vec4<i32>(~reverseBits(~202i), _wgslsmith_div_i32(-6241i, 1i) >> (var_2.c.b.c.x % 32u), 42478i, u_input.d.x), func_1().c.b);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_0.c.b), arg_3.b, func_1().c);
    global1 = min(select(func_4(u_input.d.x, Struct_4(_wgslsmith_f_op_f32(max(735f, arg_3.b.b)), Struct_1(22927u, var_0.b.b, vec3<u32>(u_input.b.x, 10852u, u_input.a), 0u), var_0.c), _wgslsmith_add_u32(u_input.e, arg_3.b.d << (arg_0.c.d % 32u)), ~(arg_0.b | vec4<i32>(arg_0.b.x, 76250i, u_input.d.x, -16432i))).c.c.zy, ~max(reverseBits(vec2<u32>(0u, 67270u)), func_4(2147483647i, Struct_4(360f, var_0.c.b, arg_3), arg_0.c.d, vec4<i32>(u_input.d.x, arg_0.b.x, u_input.d.x, 1i)).c.c.zy), !vec2<bool>(arg_1, func_2(arg_0.a, vec2<bool>(true, arg_1)))), vec2<u32>(~4294967295u, ~(var_0.c.a.a | var_0.c.a.c.x) ^ _wgslsmith_div_u32(~4294967295u, ~arg_2)));
    var var_1 = var_0;
    let var_2 = Struct_4(arg_3.c.x, func_4(-50565i, var_0, _wgslsmith_mult_u32(var_0.c.b.c.x ^ 1u, arg_2), _wgslsmith_add_vec4_i32(arg_0.b, vec4<i32>(-2147483647i, -21751i, arg_0.b.x, ~(-2147483647i)))).c, func_1().c);
    let var_3 = reverseBits(32927u) | var_1.b.d;
    return StorageBuffer(_wgslsmith_mod_vec2_i32(firstLeadingBit(-arg_0.b.zw), abs(arg_0.b.yw)) & (arg_0.b.xy << ((vec2<u32>(arg_2, arg_2) >> (abs(arg_0.c.c.yx) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(-47928i, func_1(), 1u, ~(~vec4<i32>(u_input.d.x, -29617i, -1i, u_input.d.x) << (_wgslsmith_add_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u)))), !all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 43365u, func_1().c);
}

