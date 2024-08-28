struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: array<u32, 9>;

var<private> global2: array<i32, 8>;

var<private> global3: array<i32, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = min(42854u, u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.d.yx);
    var var_2 = global1[_wgslsmith_index_u32(0u, 9u)];
    var var_3 = all(select(select(vec4<bool>(-827f == arg_0.a.b.a.x, true, -258f < var_1.x, true), !(!vec4<bool>(arg_0.a.c, false, arg_0.a.c, false)), true), select(select(!vec4<bool>(arg_0.a.c, arg_0.a.c, true, false), vec4<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c, arg_0.a.c), false), select(!vec4<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c, arg_0.a.c), !vec4<bool>(arg_0.a.c, arg_0.a.c, false, arg_0.a.c), arg_0.a.c), vec4<bool>(var_1.x < var_1.x, arg_0.a.c, all(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(u_input.b.x, 9u)] <= 27160u)), vec4<bool>(-1000f <= arg_0.a.b.b, select(true, true, arg_0.a.c), true, _wgslsmith_f_op_f32(abs(-976f)) < _wgslsmith_div_f32(-995f, var_1.x))));
    let var_4 = arg_0.a.c;
    return min(max((global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_0, 9u)], 21u)] ^ global3[_wgslsmith_index_u32(17462u, 21u)]) >> (81324u % 32u), select(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18239u, 9u)], 8u)], global2[_wgslsmith_index_u32(1621u, 8u)]), 2147483647i, false) ^ global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(33520u, u_input.b.x), 21u)]), global2[_wgslsmith_index_u32(~4294967295u, 8u)]);
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec3_i32(-(~(~global0[_wgslsmith_index_u32(1u, 22u)])) << (~u_input.b % vec3<u32>(32u)), -vec3<i32>(1615i, ~func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(-263f, -288f), -240f, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), Struct_1(vec2<f32>(-327f, 502f), -1000f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11547u, 9u)], 22u)]), false, vec4<f32>(503f, -776f, 488f, 867f)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 24613i, global2[_wgslsmith_index_u32(u_input.d.x, 8u)], 15104i), vec4<i32>(-53394i, global2[_wgslsmith_index_u32(0u, 8u)], 2147483647i, global3[_wgslsmith_index_u32(1u, 21u)]) & vec4<i32>(-2147483647i, u_input.c, -1i, global2[_wgslsmith_index_u32(0u, 8u)]))));
    global1 = array<u32, 9>();
    global2 = array<i32, 8>();
    let var_1 = ~vec4<i32>(-1i, firstTrailingBit(min(u_input.c, 0i)), 2147483647i, func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(445f, 2042f), 1222f, vec3<i32>(u_input.c, 0i, 2147483647i)), Struct_1(vec2<f32>(-1483f, -523f), -1750f, global0[_wgslsmith_index_u32(72721u, 22u)]), false, vec4<f32>(-445f, 742f, 484f, -1553f)))) << (~_wgslsmith_mod_u32(4294967295u, 17678u) % 32u));
    global1 = array<u32, 9>();
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-230f + 1244f), 1182f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(trunc(873f))), vec2<bool>(true, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2427f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1151f - -1580f) + -1000f))), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.d, max(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 9u)], u_input.d.x, 66011u), vec4<u32>(0u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], u_input.d.x)), u_input.d)), 9u)], 22u)]);
    let var_1 = 4376i;
    let var_2 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(select(88709u, global1[_wgslsmith_index_u32(u_input.d.x, 9u)], false), _wgslsmith_div_u32(1u, 11012u)), u_input.b.xz) ^ ~0u);
    var var_3 = ~abs(~(~_wgslsmith_mod_vec3_u32(u_input.d.yxx, vec3<u32>(26986u, 1u, 19060u))));
    let var_4 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1585f - -363f), 1007f), var_0.b, global0[_wgslsmith_index_u32(abs(~3709u), 22u)]), Struct_1(var_0.a, -452f, abs(-vec3<i32>(15562i, 20252i, 1i))), !all(vec3<bool>(true, true, true)), vec4<f32>(672f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(func_2()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-561f))))));
    return var_4.a.a;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = array<u32, 9>();
    var var_0 = Struct_3(arg_0);
    let var_1 = var_0.a;
    global2 = array<i32, 8>();
    var_0 = Struct_3(Struct_2(func_1(), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.a + vec2<f32>(-1419f, arg_0.a.b)), var_0.a.b.a), arg_0.d.x, arg_0.b.c), var_1.c || select(true, -1i < global2[_wgslsmith_index_u32(27479u, 8u)], !var_0.a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.d)) - _wgslsmith_f_op_vec4_f32(var_0.a.d + _wgslsmith_div_vec4_f32(vec4<f32>(338f, var_0.a.a.b, -1902f, arg_0.b.b), vec4<f32>(var_1.b.b, arg_0.d.x, 1637f, var_1.b.a.x))))));
    return Struct_2(func_1(), arg_0.a, false, var_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 21>();
    var var_0 = -635f;
    var var_1 = Struct_3(func_4(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(446f, -956f), vec2<f32>(-218f, 972f)), 737f, reverseBits(vec3<i32>(-52978i, 1i, global3[_wgslsmith_index_u32(1u, 21u)]))), func_1(), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, 489f, 240f, 1069f))))));
    let var_2 = func_3(Struct_3(Struct_2(func_4(Struct_2(Struct_1(var_1.a.d.xz, -770f, vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31780u, 9u)], 8u)], global3[_wgslsmith_index_u32(u_input.d.x, 21u)], var_1.a.a.c.x)), var_1.a.a, false, var_1.a.d)).a, var_1.a.b, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.a.x, -651f, var_1.a.d.x, -543f) * vec4<f32>(876f, -301f, 633f, var_1.a.b.b)) - vec4<f32>(var_1.a.d.x, var_1.a.d.x, -1421f, -452f)))));
    var var_3 = var_1.a.d.zxx;
    var_1 = Struct_3(func_4(func_4(func_4(Struct_2(Struct_1(var_3.yx, var_3.x, vec3<i32>(-19512i, -6737i, 1i)), Struct_1(vec2<f32>(-1000f, var_1.a.d.x), var_3.x, vec3<i32>(u_input.c, global3[_wgslsmith_index_u32(1u, 21u)], var_1.a.b.c.x)), false, vec4<f32>(var_3.x, var_1.a.b.a.x, 1047f, var_1.a.a.b))))));
    global1 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-((vec3<i32>(25418i, var_2, 43624i) ^ vec3<i32>(-2147483647i, 0i, var_1.a.b.c.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(0i, var_1.a.b.c.x, -35553i), vec3<i32>(var_1.a.b.c.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(91421u, 9u)], 8u)], var_2)))), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d.wy), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.d.x, 9u)]), u_input.b.zx)), 9u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(abs(4294967295u)) | ~(~global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), 9u)], 9u)] % 32u), -((var_1.a.a.c | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10157u, 1u, global1[_wgslsmith_index_u32(0u, 9u)]), 22u)]) ^ _wgslsmith_clamp_vec3_i32(~global0[_wgslsmith_index_u32(30652u, 22u)], func_1().c, global0[_wgslsmith_index_u32(countOneBits(0u), 22u)])));
}

