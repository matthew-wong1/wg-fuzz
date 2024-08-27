struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_4,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(1000f, 1i, 11700i, 457f, vec4<bool>(false, true, false, true)), Struct_1(1332f, 7593i, 38494i, 1927f, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(118f, -59081i, 1i, -305f, vec4<bool>(false, false, false, false)), Struct_1(-544f, -33577i, 1689i, 518f, vec4<bool>(false, true, true, true))), Struct_2(Struct_1(577f, -1i, 1i, 1393f, vec4<bool>(false, false, false, true)), Struct_1(411f, -1i, 1i, -831f, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(-1127f, 0i, 1596i, 678f, vec4<bool>(true, true, true, false)), Struct_1(-129f, 24561i, 1i, -1924f, vec4<bool>(true, false, true, true))), Struct_2(Struct_1(-1196f, 0i, i32(-2147483648), -748f, vec4<bool>(false, false, false, true)), Struct_1(648f, 16939i, i32(-2147483648), -522f, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(1577f, 1i, -1i, 1986f, vec4<bool>(true, true, false, true)), Struct_1(-1000f, 55945i, 0i, -2740f, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(1000f, 2147483647i, -1i, -1045f, vec4<bool>(false, false, true, true)), Struct_1(1000f, 18175i, 39461i, -677f, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-675f, 5465i, 2147483647i, -104f, vec4<bool>(true, false, true, false)), Struct_1(1000f, 1i, i32(-2147483648), -282f, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(-952f, -40376i, 2147483647i, 916f, vec4<bool>(true, true, false, true)), Struct_1(-1059f, -4329i, -13143i, 426f, vec4<bool>(false, false, false, true))), Struct_2(Struct_1(-1099f, 0i, i32(-2147483648), -186f, vec4<bool>(false, true, true, true)), Struct_1(-737f, -1i, 6964i, -1938f, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(329f, 25568i, 74904i, -306f, vec4<bool>(false, false, true, false)), Struct_1(758f, -27014i, 0i, 727f, vec4<bool>(true, false, true, true))));

var<private> global2: vec2<f32>;

var<private> global3: vec2<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = select(~vec2<i32>(arg_0, 1i), _wgslsmith_clamp_vec2_i32(u_input.b, -vec2<i32>(_wgslsmith_clamp_i32(-23986i, u_input.b.x, -35473i), 1i), vec2<i32>(arg_0, reverseBits(1i)) ^ vec2<i32>(-70890i, ~0i)), vec2<bool>(_wgslsmith_sub_i32(arg_0, ~14341i) >= -24441i, global3.x));
    let var_1 = 42510u;
    global3 = vec2<bool>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 23675i, arg_0, 16675i), min(vec4<i32>(-16098i, -55275i, 2147483647i, var_0.x), vec4<i32>(u_input.b.x, -18865i, var_0.x, -3736i))) > 0i, global3.x);
    var var_2 = -537f;
    let var_3 = Struct_3(_wgslsmith_div_vec3_i32(reverseBits(abs(vec3<i32>(50656i, u_input.b.x, -135i) & vec3<i32>(0i, var_0.x, 25776i))), vec3<i32>(0i, ~0i, ~(-11265i))), vec4<i32>(i32(-1i) * -70691i, 2147483647i, max(5259i, _wgslsmith_mod_i32(-2147483647i, var_0.x)), arg_0), Struct_1(global2.x, ~(arg_0 ^ arg_0) | -arg_0, ~(-1i), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_div_f32(-777f, global2.x)))), !select(select(global0[_wgslsmith_index_u32(var_1, 10u)], vec4<bool>(global3.x, global3.x, true, global3.x), global3.x), vec4<bool>(global3.x, false, false, global3.x), global3.x)));
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_1) -> u32 {
    global3 = !(!vec2<bool>(true, arg_1.e.b.e.x));
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.a, var_0.e.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.b, vec4<u32>(var_0.c.c.x, u_input.c.x, var_0.c.d.x, 4294967295u), arg_1.c.d.yyx)))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d.xz - _wgslsmith_f_op_vec2_f32(-arg_1.c.b.xx))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.b.zy)))) + arg_1.c.b.zz);
    let var_2 = 1i;
    return _wgslsmith_dot_vec4_u32(arg_1.c.d, var_0.c.d);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-35321i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.b.x, -10801i), vec4<i32>(u_input.b.x, u_input.b.x, 27387i, u_input.b.x)), ~vec4<i32>(u_input.b.x, -2147483647i, 17104i, u_input.b.x)), u_input.b.x, u_input.b.x), abs(-reverseBits(max(vec4<i32>(u_input.b.x, -28163i, 2147483647i, u_input.b.x), vec4<i32>(-27008i, u_input.b.x, u_input.b.x, u_input.b.x)))));
    var var_1 = all(select(select(!select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, false, false)), select(!vec3<bool>(false, global3.x, global3.x), !vec3<bool>(global3.x, false, global3.x), select(vec3<bool>(true, global3.x, false), vec3<bool>(global3.x, false, false), global3.x)), select(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, false, global3.x)), vec3<bool>(global3.x, global3.x, false))), vec3<bool>(true, true, true), global3.x));
    var var_2 = all(!select(vec3<bool>(!global3.x, true, 0u > u_input.d.x), !vec3<bool>(global3.x, true, global3.x), true));
    var_0 = vec4<i32>(_wgslsmith_clamp_i32(var_0.x, 2147483647i, 53814i), u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-14753i, u_input.b.x, -21871i, -1i), abs(-(~vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, 2744i)))), select(~1i, ~select(~(-1i), _wgslsmith_dot_vec2_i32(u_input.b, var_0.yz), global3.x), true));
    global0 = array<vec4<bool>, 10>();
    return Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, -1000f, false)) * _wgslsmith_f_op_f32(floor(global2.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, -712f, -1394f), vec3<f32>(-1236f, arg_0, 1227f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, 190f, 1385f), vec3<f32>(global2.x, arg_0, -1645f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(384f * 209f), _wgslsmith_f_op_f32(exp2(arg_0)), 2188f))), global3.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2, arg_2, u_input.a), select(vec3<u32>(u_input.a, 1u, 53766u), vec3<u32>(arg_2, 0u, u_input.d.x), global3.x), ~vec3<u32>(4294967295u, arg_1, 17654u)) | abs(~vec3<u32>(11071u, 86456u, 4294967295u)), ~(~(~vec3<u32>(12493u, arg_1, 1u)))), vec4<u32>(_wgslsmith_mult_u32(4294967295u | arg_2, _wgslsmith_div_u32(reverseBits(u_input.a), 0u)), 1u, abs(arg_1), _wgslsmith_add_u32(firstLeadingBit(6839u), u_input.c.x) | 14004u));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = arg_3.e;
    var var_1 = 91757u;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~arg_0.c.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(17250u | arg_3.c.d.x, arg_3.c.d.x, 47281u), 1u ^ max(u_input.a, 37475u))), arg_0.d.x);
    global3 = arg_3.e.b.e.yz;
    var var_3 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(-24062i, -2040i) >> (u_input.a % 32u), vec4<u32>(firstLeadingBit(41492u), arg_0.c.x, arg_3.c.c.x, 1u), arg_0.d.wyz)), -(i32(-1i) * -1i), u_input.b.x, _wgslsmith_f_op_f32(-func_4(-724f, ~0u, u_input.d.x).b.x), !(!global0[_wgslsmith_index_u32(u_input.a, 10u)])));
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, _wgslsmith_f_op_f32(f32(-1f) * -821f), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), max(u_input.d.x, u_input.d.x) > 0u))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -122f, 1000f, -102f) + vec4<f32>(arg_1.e.b.d, global2.x, -1510f, global2.x)))))));
    var var_1 = abs(_wgslsmith_add_u32(31862u, arg_1.c.d.x));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) + _wgslsmith_f_op_f32(-arg_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) - global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - 123f) - _wgslsmith_f_op_f32(-func_5(arg_1.c, arg_0.a.a, var_0.x, arg_1).a.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-248f, arg_1.d.x, -2317f, -283f))), vec4<f32>(arg_0.b.d, global2.x, _wgslsmith_f_op_f32(-273f * arg_1.e.b.d), _wgslsmith_div_f32(global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -1162f, -1378f, -2882f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-145f, arg_0.a.a, arg_1.e.a.d, 175f), vec4<f32>(global2.x, 241f, arg_1.c.a, arg_1.c.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.e.a.d, arg_0.b.a, arg_1.e.b.a)))))));
    var var_2 = arg_1.e.b.a;
    var var_3 = !vec3<bool>(true, u_input.b.x > u_input.b.x, global3.x);
    return Struct_4(_wgslsmith_f_op_f32(-arg_0.b.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(586f, -1122f))), 312f, -249f) * arg_1.c.b), vec3<u32>(24931u, 88285u, arg_1.c.c.x), arg_1.c.d);
}

fn func_7(arg_0: Struct_4) -> vec4<f32> {
    global1 = array<Struct_2, 11>();
    global0 = array<vec4<bool>, 10>();
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(~2147483647i, u_input.b.x, 60909i)));
    let var_2 = any(!select(select(vec2<bool>(true, true), !vec2<bool>(true, global3.x), vec2<bool>(true, true)), select(vec2<bool>(global3.x, false), vec2<bool>(true, true), select(vec2<bool>(false, global3.x), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(false & global3.x, true)));
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(393f)), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(arg_0.b.x + -1630f)))))), -192f, global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, arg_0.a), arg_0.b.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_4 {
    global1 = array<Struct_2, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_7(func_6(func_5(func_4(_wgslsmith_div_f32(arg_1.x, arg_0.b.d), _wgslsmith_mult_u32(u_input.a, u_input.c.x), func_2(arg_0.a, Struct_5(vec4<i32>(5997i, u_input.b.x, 8609i, -2147483647i), vec3<i32>(u_input.b.x, 1714i, 2147483647i), Struct_4(global2.x, arg_1, vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(4294967295u, u_input.a, 1u, 62572u)), vec3<f32>(global2.x, -1065f, arg_0.a.a), Struct_2(arg_0.a, Struct_1(arg_1.x, -2147483647i, arg_0.a.b, -692f, vec4<bool>(global3.x, global3.x, true, false)))), Struct_1(727f, u_input.b.x, 107750i, arg_1.x, global0[_wgslsmith_index_u32(18499u, 10u)]))), arg_1.x, -534f, Struct_5(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -2147483647i), abs(vec3<i32>(-2147483647i, u_input.b.x, -47462i)), func_4(-264f, u_input.c.x, 72679u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, 419f, arg_0.a.d)), Struct_2(Struct_1(arg_0.a.d, arg_0.a.c, u_input.b.x, 548f, vec4<bool>(false, global3.x, true, global3.x)), arg_0.a))), Struct_5(~vec4<i32>(u_input.b.x, u_input.b.x, 23147i, arg_0.b.b), vec3<i32>(arg_0.a.c, -16742i, arg_0.b.b) & -vec3<i32>(-1i, -8225i, arg_0.a.b), Struct_4(_wgslsmith_f_op_f32(848f + 779f), _wgslsmith_f_op_vec3_f32(step(arg_1, arg_1)), ~vec3<u32>(u_input.a, 94173u, u_input.d.x), ~vec4<u32>(2313u, 48310u, 1u, u_input.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 2849f, arg_1.x) - _wgslsmith_f_op_vec3_f32(arg_1 * arg_1)), Struct_2(arg_0.a, func_5(Struct_4(global2.x, vec3<f32>(417f, arg_0.b.a, arg_1.x), vec3<u32>(0u, u_input.d.x, u_input.d.x), vec4<u32>(62997u, 32599u, u_input.a, u_input.d.x)), arg_1.x, arg_1.x, Struct_5(vec4<i32>(10953i, -1i, 1i, arg_0.b.c), vec3<i32>(36580i, u_input.b.x, -2147483647i), Struct_4(arg_1.x, arg_1, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(9031u, u_input.a, 30344u, u_input.c.x)), arg_1, global1[_wgslsmith_index_u32(17694u, 11u)])).a)), vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = func_5(func_4(global2.x, u_input.c.x, (_wgslsmith_mult_u32(14553u, u_input.d.x) | (u_input.d.x & u_input.d.x)) << (u_input.d.x % 32u)), global2.x, 389f, Struct_5(firstTrailingBit(~vec4<i32>(30565i, arg_0.a.b, 58333i, 15733i)) & _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(1i, -49986i, arg_0.b.c, 50258i)), min(vec4<i32>(arg_0.b.c, 1i, arg_0.b.b, 42919i), vec4<i32>(arg_0.b.c, -22406i, 14359i, u_input.b.x))), vec3<i32>(1i, u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-11001i, u_input.b.x, arg_0.b.c), -vec3<i32>(-2147483647i, arg_0.b.c, 1i))), func_6(arg_0, Struct_5(select(vec4<i32>(2147483647i, arg_0.b.c, u_input.b.x, 2147483647i), vec4<i32>(-2147483647i, 1i, 2147483647i, 1i), arg_0.b.e), vec3<i32>(arg_0.a.c, arg_0.a.b, arg_0.b.b), Struct_4(arg_0.b.a, vec3<f32>(arg_0.b.d, 912f, -681f), vec3<u32>(u_input.a, 54889u, 0u), vec4<u32>(u_input.d.x, 0u, 0u, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -113f)), func_5(Struct_4(2515f, vec3<f32>(-236f, arg_1.x, -738f), vec3<u32>(u_input.d.x, 1u, u_input.a), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 1u)), var_0.x, -1084f, Struct_5(vec4<i32>(arg_0.b.b, arg_0.b.b, arg_0.a.b, arg_0.b.c), vec3<i32>(-2147483647i, arg_0.a.c, 2147483647i), Struct_4(-793f, arg_1, vec3<u32>(0u, 18859u, u_input.a), vec4<u32>(u_input.a, 57105u, 0u, u_input.a)), var_0.xww, Struct_2(arg_0.b, Struct_1(var_0.x, u_input.b.x, 2147483647i, 526f, arg_0.a.e))))), abs(vec3<u32>(0u, u_input.a, u_input.d.x)) ^ ~vec3<u32>(u_input.a, 68896u, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.d * arg_0.b.a), _wgslsmith_f_op_f32(func_3(-6805i, vec4<u32>(11405u, 1u, u_input.c.x, u_input.a), vec3<u32>(u_input.a, 43092u, u_input.d.x))), _wgslsmith_f_op_f32(-794f * 1000f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1843f * arg_1.x), u_input.b.x | 35997i, -u_input.b.x, 951f, vec4<bool>(true, false, arg_0.b.e.x, false)), func_5(func_6(arg_0, Struct_5(vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(-14661i, -44451i, u_input.b.x), Struct_4(1678f, arg_1, vec3<u32>(4294967295u, u_input.a, u_input.c.x), vec4<u32>(30400u, u_input.a, u_input.a, 4294967295u)), vec3<f32>(-1000f, global2.x, -1028f), Struct_2(arg_0.b, arg_0.b)), vec3<u32>(u_input.d.x, u_input.c.x, 1208u)), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(arg_0.b.a * 898f), Struct_5(vec4<i32>(u_input.b.x, arg_0.b.b, -26204i, -2147483647i), vec3<i32>(1i, u_input.b.x, 0i), Struct_4(296f, vec3<f32>(arg_1.x, -259f, 487f), vec3<u32>(u_input.d.x, 2305u, 0u), vec4<u32>(0u, u_input.a, 40231u, u_input.c.x)), vec3<f32>(arg_0.a.d, global2.x, global2.x), Struct_2(arg_0.a, Struct_1(var_0.x, u_input.b.x, u_input.b.x, arg_1.x, vec4<bool>(false, true, false, true))))).a))).b.e;
    let var_2 = var_0.x;
    var var_3 = Struct_5((-abs(vec4<i32>(arg_0.a.b, 2147483647i, u_input.b.x, -34295i)) & select(vec4<i32>(-8193i, 0i, -1i, arg_0.b.b), vec4<i32>(1i, -1625i, 2147483647i, arg_0.b.b), !arg_0.a.e.x)) ^ (vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), _wgslsmith_mult_i32(arg_0.a.c, 8652i), min(2717i, arg_0.a.b), arg_0.b.c) & _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.b.c, u_input.b.x, 0i), vec4<i32>(arg_0.b.c, -16823i, arg_0.b.b, arg_0.b.b)), select(vec4<i32>(23177i, u_input.b.x, 40463i, arg_0.b.c), vec4<i32>(arg_0.a.c, 0i, -2147483647i, 2147483647i), arg_0.a.e))), vec3<i32>(~_wgslsmith_sub_i32(arg_0.b.c, abs(2147483647i)), ~(-u_input.b.x) | _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b.b, -1i, arg_0.a.b, 68208i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 26129i, arg_0.b.c, arg_0.a.b), vec4<i32>(28386i, -25265i, -3717i, 1i))), ~(~_wgslsmith_sub_i32(arg_0.a.b, arg_0.a.c))), func_6(func_5(func_6(Struct_2(Struct_1(arg_1.x, arg_0.b.b, arg_0.b.c, var_0.x, vec4<bool>(false, var_1.x, false, false)), Struct_1(1013f, u_input.b.x, -2147483647i, arg_0.a.d, vec4<bool>(true, false, false, arg_0.a.e.x))), Struct_5(vec4<i32>(arg_0.a.b, -31534i, u_input.b.x, -1i), vec3<i32>(arg_0.b.b, 2147483647i, arg_0.b.c), Struct_4(1552f, vec3<f32>(var_0.x, -789f, global2.x), vec3<u32>(u_input.c.x, 4294967295u, u_input.a), vec4<u32>(u_input.d.x, 53549u, u_input.a, u_input.d.x)), var_0.zyx, Struct_2(Struct_1(var_0.x, u_input.b.x, 0i, 1267f, vec4<bool>(arg_0.b.e.x, global3.x, var_1.x, var_1.x)), Struct_1(-2479f, arg_0.a.c, 2147483647i, var_0.x, vec4<bool>(true, false, arg_0.a.e.x, false)))), ~vec3<u32>(u_input.d.x, 1u, 50773u)), -530f, global2.x, Struct_5(min(vec4<i32>(-7716i, -63068i, 2147483647i, -3528i), vec4<i32>(u_input.b.x, u_input.b.x, 8459i, arg_0.a.c)), ~vec3<i32>(u_input.b.x, 0i, 1i), Struct_4(-2278f, vec3<f32>(-1207f, arg_1.x, 1622f), vec3<u32>(1u, 17239u, 0u), vec4<u32>(18037u, u_input.a, 20615u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.d, 294f, -1081f) - var_0.yxz), Struct_2(Struct_1(-1306f, -1i, u_input.b.x, 747f, var_1), arg_0.a))), Struct_5(vec4<i32>(_wgslsmith_mod_i32(arg_0.b.c, arg_0.b.c), ~(-35282i), firstLeadingBit(-2147483647i), -2147483647i), vec3<i32>(arg_0.b.b, arg_0.b.b & u_input.b.x, abs(u_input.b.x)), Struct_4(_wgslsmith_f_op_f32(step(global2.x, -286f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_0.b.a, 366f)), reverseBits(vec3<u32>(u_input.c.x, 35785u, 23462u)), abs(vec4<u32>(15062u, u_input.d.x, u_input.d.x, u_input.c.x))), _wgslsmith_f_op_vec3_f32(var_0.xzw + var_0.xwy), Struct_2(func_5(Struct_4(arg_1.x, arg_1, vec3<u32>(7062u, 1268u, u_input.d.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u)), -1211f, 1191f, Struct_5(vec4<i32>(arg_0.b.b, -7600i, 6990i, -1i), vec3<i32>(-3798i, arg_0.b.b, 1i), Struct_4(180f, arg_1, vec3<u32>(u_input.c.x, u_input.d.x, 69521u), vec4<u32>(4294967295u, u_input.c.x, 21064u, 37834u)), vec3<f32>(arg_0.a.d, -461f, arg_0.b.d), Struct_2(arg_0.a, arg_0.b))).b, arg_0.b)), ~(vec3<u32>(u_input.a, 4294967295u, u_input.c.x) | max(vec3<u32>(1u, 21590u, u_input.a), vec3<u32>(u_input.a, u_input.d.x, 9972u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, global2.x, -878f)))), Struct_2(func_5(func_4(_wgslsmith_f_op_f32(arg_1.x - var_0.x), u_input.d.x | u_input.a, ~45195u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a - var_0.x) - _wgslsmith_f_op_f32(min(arg_1.x, -481f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + arg_0.b.a), Struct_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, u_input.b.x, 18039i), vec4<i32>(17322i, 19458i, u_input.b.x, u_input.b.x), vec4<i32>(49145i, arg_0.b.b, 1238i, -61607i)), vec3<i32>(u_input.b.x, arg_0.a.c, arg_0.a.b), func_6(Struct_2(Struct_1(-1144f, arg_0.b.c, arg_0.a.b, arg_1.x, vec4<bool>(true, false, global3.x, true)), Struct_1(220f, arg_0.b.c, 761i, -1054f, vec4<bool>(var_1.x, arg_0.b.e.x, arg_0.a.e.x, false))), Struct_5(vec4<i32>(arg_0.a.b, -1i, u_input.b.x, -2147483647i), vec3<i32>(arg_0.a.c, 0i, -27999i), Struct_4(-778f, var_0.zwy, vec3<u32>(4224u, 7461u, u_input.a), vec4<u32>(4240u, u_input.c.x, 4294967295u, 0u)), vec3<f32>(129f, var_0.x, global2.x), arg_0), vec3<u32>(u_input.d.x, 0u, u_input.d.x)), vec3<f32>(global2.x, -300f, arg_1.x), Struct_2(Struct_1(-998f, 44362i, -2147483647i, global2.x, arg_0.b.e), arg_0.a))).a, func_5(Struct_4(_wgslsmith_f_op_f32(366f + 508f), arg_1, vec3<u32>(38827u, 72702u, 1u) >> (vec3<u32>(18251u, u_input.d.x, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.c.x, 43008u, u_input.c.x, 50158u), vec4<u32>(82780u, u_input.d.x, u_input.c.x, u_input.c.x))), global2.x, _wgslsmith_f_op_f32(-global2.x), Struct_5(reverseBits(vec4<i32>(-1847i, u_input.b.x, u_input.b.x, u_input.b.x)), abs(vec3<i32>(arg_0.a.b, 2147483647i, u_input.b.x)), Struct_4(-854f, arg_1, vec3<u32>(4294967295u, 17254u, 4294967295u), vec4<u32>(39234u, u_input.a, 48683u, 84620u)), vec3<f32>(var_0.x, 511f, -1050f), Struct_2(Struct_1(arg_0.a.a, u_input.b.x, arg_0.a.c, 1211f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), arg_0.a))).b));
    return var_3.c;
}

fn func_8(arg_0: i32, arg_1: Struct_5, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = select(vec3<bool>(true, func_5(func_4(_wgslsmith_f_op_f32(sign(global2.x)), ~4294967295u, ~u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.b.x), func_5(Struct_4(global2.x, vec3<f32>(global2.x, global2.x, global2.x), arg_2, vec4<u32>(11603u, 33115u, arg_1.c.c.x, 13094u)), arg_1.e.b.d, arg_1.d.x, Struct_5(arg_1.a, vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_4(1899f, arg_1.c.b, vec3<u32>(4294967295u, arg_2.x, arg_2.x), vec4<u32>(u_input.a, u_input.c.x, 27480u, arg_1.c.d.x)), vec3<f32>(arg_1.c.a, arg_1.c.a, arg_1.e.b.a), Struct_2(Struct_1(arg_1.c.a, arg_0, -1i, 448f, vec4<bool>(true, global3.x, true, false)), Struct_1(-175f, 11434i, u_input.b.x, -482f, vec4<bool>(arg_1.e.a.e.x, global3.x, global3.x, true))))).b.a), Struct_5(vec4<i32>(arg_0, u_input.b.x, u_input.b.x, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, arg_1.a.x, arg_0), vec3<i32>(0i, arg_0, arg_1.b.x), vec3<i32>(23420i, 0i, arg_1.b.x)), arg_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_1.c.a, global2.x)), arg_1.e)).b.e.x, false), select(!vec3<bool>(global3.x, any(arg_1.e.b.e.wx), any(vec2<bool>(false, false))), !func_5(func_1(global1[_wgslsmith_index_u32(33246u, 11u)], vec3<f32>(-1024f, -370f, global2.x)), arg_1.d.x, _wgslsmith_f_op_f32(sign(arg_1.c.a)), Struct_5(vec4<i32>(arg_1.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(9153i, -50075i, -23224i), arg_1.c, arg_1.d, Struct_2(arg_1.e.b, arg_1.e.a))).a.e.zxy, any(vec2<bool>(false, arg_1.e.b.e.x)) | (any(vec4<bool>(arg_1.e.a.e.x, true, global3.x, global3.x)) & arg_1.e.a.e.x)), all(vec2<bool>(arg_1.e.a.e.x, global3.x)));
    var var_1 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(step(global2.x, arg_1.c.a)))), ~(-arg_1.e.b.c), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-918f)), _wgslsmith_f_op_f32(f32(-1f) * -2616f)), func_5(Struct_4(1419f, vec3<f32>(-102f, global2.x, arg_1.c.a), vec3<u32>(arg_2.x, 29295u, 108793u), arg_1.c.d), _wgslsmith_f_op_f32(1414f + 1696f), _wgslsmith_f_op_f32(global2.x - arg_1.e.b.a), Struct_5(vec4<i32>(arg_1.a.x, arg_0, arg_1.b.x, -2147483647i), vec3<i32>(arg_0, 1i, 70916i), arg_1.c, vec3<f32>(-332f, 744f, global2.x), Struct_2(arg_1.e.a, Struct_1(720f, u_input.b.x, 2147483647i, arg_1.c.a, global0[_wgslsmith_index_u32(1u, 10u)])))).b.e), arg_1.e.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) - _wgslsmith_f_op_vec3_f32(-arg_1.c.b))) * vec3<f32>(global2.x, _wgslsmith_f_op_f32(1500f + _wgslsmith_f_op_f32(-arg_1.d.x)), 1230f)));
    global2 = arg_1.d.yz;
    var var_2 = arg_1.b;
    var var_3 = _wgslsmith_dot_vec2_i32(var_2.zx, arg_1.a.yx);
    return Struct_3(reverseBits(arg_1.b), arg_1.a, func_5(Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(387f * var_1.a), _wgslsmith_f_op_f32(614f * 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(448f, 1000f, 172f))) - vec3<f32>(global2.x, -2698f, -1498f)), arg_1.c.d.yzy, vec4<u32>(4294967295u << (var_1.c.x % 32u), ~arg_2.x, _wgslsmith_mult_u32(u_input.c.x, 4294967295u), ~4294967295u)), -402f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.b.x, 353f), arg_1.e.a.a), Struct_5(firstTrailingBit(-arg_1.a), -arg_1.a.zxz | firstTrailingBit(vec3<i32>(0i, -9136i, -1i)), Struct_4(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_vec3_f32(select(arg_1.c.b, var_1.b, false)), arg_2 >> (vec3<u32>(arg_2.x, 0u, var_1.d.x) % vec3<u32>(32u)), max(arg_1.c.d, vec4<u32>(var_1.d.x, 89669u, u_input.a, u_input.c.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(364f, arg_1.d.x, global2.x)))), Struct_2(func_5(Struct_4(-721f, var_1.b, vec3<u32>(arg_2.x, var_1.c.x, var_1.d.x), var_1.d), 184f, global2.x, Struct_5(vec4<i32>(arg_0, arg_0, arg_1.b.x, arg_1.e.a.b), arg_1.b, Struct_4(-258f, var_1.b, var_1.d.xyy, arg_1.c.d), arg_1.d, arg_1.e)).a, Struct_1(-1000f, u_input.b.x, 15i, -858f, arg_1.e.a.e)))).b);
}

fn func_9(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_7(Struct_4(-1091f, vec3<f32>(-1018f, 125f, 678f), vec3<u32>(21258u, u_input.d.x, 0u), vec4<u32>(52356u, u_input.c.x, 13647u, u_input.c.x)))).x, u_input.b.x, _wgslsmith_dot_vec4_i32(~arg_3, select(vec4<i32>(27322i, u_input.b.x, arg_0.a.x, 2147483647i), vec4<i32>(u_input.b.x, arg_3.x, -23450i, arg_0.c.b), false)), 1633f, arg_2), func_5(Struct_4(_wgslsmith_f_op_f32(-764f + 1647f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1110f, arg_1, arg_1) * vec3<f32>(428f, arg_0.c.a, -1704f)), abs(vec3<u32>(34308u, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 0u)), _wgslsmith_f_op_f32(-2714f * -766f), 1814f, Struct_5(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 2147483647i), arg_3.yyy, func_4(-982f, u_input.d.x, 64568u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 189f, arg_0.c.d)), Struct_2(arg_0.c, arg_0.c))).a), vec3<f32>(-450f, _wgslsmith_f_op_f32(-arg_1), 1836f));
    let var_1 = vec4<bool>(func_5(func_1(Struct_2(func_8(3266i, Struct_5(vec4<i32>(-2147483647i, -2147483647i, arg_3.x, 1i), arg_0.b.wxx, Struct_4(arg_1, vec3<f32>(arg_1, 1231f, 1755f), vec3<u32>(1u, var_0.c.x, var_0.d.x), var_0.d), vec3<f32>(-1398f, 590f, var_0.a), global1[_wgslsmith_index_u32(var_0.d.x, 11u)]), vec3<u32>(var_0.d.x, 1u, u_input.a)).c, func_5(Struct_4(593f, var_0.b, var_0.d.xxx, vec4<u32>(u_input.d.x, 45554u, 2454u, var_0.d.x)), var_0.a, global2.x, Struct_5(arg_0.b, vec3<i32>(62793i, 37501i, arg_0.a.x), Struct_4(-568f, vec3<f32>(arg_1, -423f, -404f), vec3<u32>(u_input.d.x, u_input.c.x, 39394u), var_0.d), var_0.b, global1[_wgslsmith_index_u32(1u, 11u)])).a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a)), _wgslsmith_f_op_f32(arg_0.c.d * -428f), Struct_5(-vec4<i32>(-15636i, u_input.b.x, 57212i, arg_0.c.b), arg_3.xzw, func_6(func_5(Struct_4(-463f, vec3<f32>(-336f, arg_1, arg_1), vec3<u32>(73039u, u_input.d.x, 4294967295u), vec4<u32>(18249u, 1u, 24875u, u_input.c.x)), arg_0.c.d, 1133f, Struct_5(arg_0.b, arg_0.b.zxy, Struct_4(arg_0.c.d, var_0.b, var_0.c, var_0.d), var_0.b, global1[_wgslsmith_index_u32(var_0.c.x, 11u)])), Struct_5(vec4<i32>(85190i, arg_3.x, 47096i, arg_0.c.c), arg_3.xww, var_0, vec3<f32>(404f, arg_0.c.d, 733f), Struct_2(Struct_1(arg_1, u_input.b.x, u_input.b.x, var_0.a, global0[_wgslsmith_index_u32(var_0.d.x, 10u)]), arg_0.c)), _wgslsmith_sub_vec3_u32(var_0.d.xwx, var_0.c)), _wgslsmith_f_op_vec3_f32(-func_4(248f, 4294967295u, u_input.a).b), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_0.d, var_0.d), ~var_0.c.x), 11u)])).b.e.x, !((arg_0.c.d < -824f) || true), true, arg_0.c.e.x || (~80876u > ~_wgslsmith_sub_u32(u_input.d.x, 55480u)));
    let var_2 = var_0;
    let var_3 = !vec2<bool>(!(arg_0.c.a == _wgslsmith_f_op_f32(var_2.b.x - var_2.a)), !any(func_5(Struct_4(1388f, vec3<f32>(arg_0.c.d, -486f, global2.x), vec3<u32>(45791u, 48071u, 20547u), var_2.d), 858f, arg_1, Struct_5(vec4<i32>(-16298i, u_input.b.x, arg_0.a.x, -2147483647i), vec3<i32>(59381i, arg_3.x, arg_3.x), var_2, var_2.b, global1[_wgslsmith_index_u32(var_2.d.x, 11u)])).a.e.xy));
    let var_4 = vec3<u32>(var_2.d.x, var_2.d.x, ~(u_input.d.x << (~(~1u) % 32u)));
    return _wgslsmith_f_op_vec3_f32(-var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 1800f, global3.x)))), global2.x));
    let var_1 = abs(-vec2<i32>(u_input.b.x, 17875i) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(62555u, u_input.d.x), u_input.d) % vec2<u32>(32u))) >> (u_input.c % vec2<u32>(32u));
    var var_2 = false;
    let var_3 = Struct_4(var_0.x, _wgslsmith_f_op_vec3_f32(func_9(func_8(i32(-1i) * -var_1.x, Struct_5(vec4<i32>(u_input.b.x, 1i, 2147483647i, -6045i) << (vec4<u32>(0u, 47693u, 50549u, u_input.c.x) % vec4<u32>(32u)), -vec3<i32>(u_input.b.x, u_input.b.x, var_1.x), func_1(Struct_2(Struct_1(global2.x, -1i, 7246i, -380f, vec4<bool>(true, global3.x, false, global3.x)), Struct_1(global2.x, var_1.x, var_1.x, var_0.x, vec4<bool>(global3.x, global3.x, false, global3.x))), vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, 1037f, var_0.x))), Struct_2(Struct_1(var_0.x, var_1.x, var_1.x, global2.x, vec4<bool>(false, false, global3.x, global3.x)), Struct_1(830f, var_1.x, u_input.b.x, global2.x, vec4<bool>(global3.x, false, true, true)))), func_1(Struct_2(Struct_1(446f, -1i, var_1.x, 1518f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), Struct_1(-1603f, 64560i, var_1.x, -713f, global0[_wgslsmith_index_u32(90063u, 10u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 637f))).d.wwy), _wgslsmith_f_op_f32(func_3(u_input.b.x, ~vec4<u32>(u_input.c.x, 14956u, 73092u, u_input.a), reverseBits(vec3<u32>(u_input.d.x, 1u, 0u)))), !vec4<bool>(true, global3.x, global3.x, true), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, u_input.b.x, -2147483647i), vec4<i32>(0i, 6797i, -1i, 2147483647i)), ~vec4<i32>(u_input.b.x, 0i, var_1.x, u_input.b.x), func_5(Struct_4(global2.x, vec3<f32>(global2.x, global2.x, var_0.x), vec3<u32>(u_input.d.x, u_input.c.x, 21221u), vec4<u32>(u_input.d.x, 4294967295u, 46024u, 1u)), global2.x, global2.x, Struct_5(vec4<i32>(u_input.b.x, -9013i, u_input.b.x, var_1.x), vec3<i32>(var_1.x, -629i, 49005i), Struct_4(global2.x, vec3<f32>(global2.x, var_0.x, global2.x), vec3<u32>(1u, 1u, 0u), vec4<u32>(12608u, u_input.c.x, u_input.a, 96999u)), vec3<f32>(1243f, var_0.x, -591f), Struct_2(Struct_1(-331f, var_1.x, 35474i, var_0.x, vec4<bool>(global3.x, false, global3.x, global3.x)), Struct_1(-447f, -1i, u_input.b.x, -614f, global0[_wgslsmith_index_u32(32028u, 10u)])))).a.e) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 0u, u_input.c.x) ^ vec4<u32>(2773u, 0u, u_input.c.x, 0u), ~vec4<u32>(u_input.a, 23898u, 4294967295u, u_input.d.x)) % vec4<u32>(32u)))), vec3<u32>(~(~1u), u_input.a, abs(~(~4294967295u))), ~(~vec4<u32>(u_input.a, u_input.d.x, ~u_input.a, _wgslsmith_mod_u32(4294967295u, 29498u))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.b.zz, _wgslsmith_f_op_vec2_f32(-var_3.b.zx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_3.b.yz, var_3.b.yy, vec2<bool>(true, true))))) - func_4(_wgslsmith_div_f32(global2.x, var_0.x), _wgslsmith_add_u32(0u, u_input.c.x) ^ ~60u, ~4294967295u).b.zy));
    var var_4 = _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(-3621i, var_1.x), u_input.b.x, 1i), vec3<i32>(firstTrailingBit(var_1.x), 0i, select(u_input.b.x, 0i, global3.x)) >> (~var_3.c % vec3<u32>(32u))) > ~(-(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(var_1.x, var_1.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1133i, -50349i, 0i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, var_1.x, var_1.x)), -4297i));
}

