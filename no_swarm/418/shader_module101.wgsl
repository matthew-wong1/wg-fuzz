struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<i32>(26332i, -1i, -6800i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-4778i, -27123i, 61247i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(94265i, 23229i, 28514i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(2147483647i, -25356i, 2147483647i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(12207i, 2147483647i, i32(-2147483648)), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-5351i, 86393i, 12942i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(-64593i, -1i, -1i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, 0i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(41939i, i32(-2147483648), -40764i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-1i, 1i, -1i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(-5822i, -24981i, -24810i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(2147483647i, 2147483647i, 15511i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(1i, 2147483647i, -22454i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(42004i, 1750i, 1i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-1i, -6289i, -1i), Struct_1(true), Struct_1(true)), Struct_3(vec3<i32>(-8231i, -18265i, i32(-2147483648)), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-31939i, -32055i, 1i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(-1i, 0i, 2313i), Struct_1(false), Struct_1(true)), Struct_3(vec3<i32>(i32(-2147483648), 81410i, i32(-2147483648)), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-20091i, 2147483647i, 1i), Struct_1(false), Struct_1(false)), Struct_3(vec3<i32>(-12508i, 8348i, 22990i), Struct_1(true), Struct_1(false)), Struct_3(vec3<i32>(-8251i, 0i, i32(-2147483648)), Struct_1(false), Struct_1(true)));

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, 1i, -31418i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 40935i, -1i), vec3<i32>(-1i, 0i, 16001i), vec3<i32>(-1i, i32(-2147483648), -9975i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = -623f;
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)] + var_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(2420u, 30u)], 797f) + vec2<f32>(var_0, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1024f, var_0)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, -1040f)))))))));
    global1 = array<Struct_3, 23>();
    var var_3 = vec4<bool>(any(vec3<bool>(all(vec4<bool>(true, arg_1.b.a, arg_1.b.a, true)), false, arg_1.b.a)), false, select(!(var_1 <= _wgslsmith_f_op_f32(trunc(1221f))), !arg_1.b.a, true), arg_1.c.a);
    return arg_1.a.zz;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = ~firstLeadingBit(arg_1);
    var var_1 = select(vec4<bool>(select(true, ~u_input.b.x < 2147483647i, any(vec2<bool>(true, true))), 597f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -513f))), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true))), vec4<bool>(all(vec2<bool>(true, true)), !select(false, false, true), all(vec4<bool>(true, true, true, true)), true));
    var_1 = !select(select(select(!vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x), !(!vec4<bool>(true, var_1.x, true, true)), vec4<bool>(any(vec4<bool>(false, true, true, var_1.x)), var_1.x, var_1.x, true)), !vec4<bool>(true, var_1.x, !var_1.x, true), vec4<bool>(false, true, !all(var_1.xwx), var_1.x));
    var var_2 = Struct_2(var_1.x, Struct_1(true));
    global2 = array<Struct_1, 30>();
    return u_input.c;
}

fn func_2() -> bool {
    global1 = array<Struct_3, 23>();
    let var_0 = 2147483647i;
    let var_1 = vec4<u32>(~u_input.c.x, u_input.c.x, u_input.d.x, ~_wgslsmith_dot_vec3_u32(u_input.c.yxx, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 24145u, u_input.d.x), u_input.c.yyx)));
    let var_2 = select(~select(vec4<u32>(u_input.d.x << (1u % 32u), _wgslsmith_div_u32(var_1.x, 1u), u_input.c.x, reverseBits(1u)), func_4(27154u, func_3(var_0, global1[_wgslsmith_index_u32(29604u, 23u)])), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, true))), min(vec4<u32>(var_1.x, ~var_1.x, _wgslsmith_sub_u32(var_1.x, max(4294967295u, var_1.x)), ~1u), vec4<u32>(1u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(31113u, 1u)), _wgslsmith_mult_u32(25684u, u_input.d.x >> (u_input.c.x % 32u)), ~_wgslsmith_div_u32(var_1.x, 59933u))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, false))), vec4<bool>(true, u_input.c.x > u_input.a, all(vec3<bool>(false, true, true)), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), true)));
    global3 = array<vec3<i32>, 5>();
    return (-(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -8140i), global3[_wgslsmith_index_u32(85342u, 5u)])) > firstTrailingBit(max(-2147483647i, var_0 | u_input.b.x))) && (all(vec4<bool>(true, true, true, true)) | true);
}

fn func_5(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    global3 = array<vec3<i32>, 5>();
    global1 = array<Struct_3, 23>();
    let var_0 = Struct_3(_wgslsmith_mod_vec3_i32(~(-u_input.b), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), 5u)]) << (~min(vec3<u32>(0u, 0u, arg_0.x), ~vec3<u32>(u_input.a, 4294967295u, 33592u)) % vec3<u32>(32u)), Struct_1(!(false == select(true, true, true))), Struct_1(false));
    let var_1 = u_input.c.x;
    global1 = array<Struct_3, 23>();
    return ~_wgslsmith_div_vec4_i32(~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0i, var_0.a.x, -2147483647i), vec4<i32>(u_input.b.x, 2147483647i, 10683i, -2147483647i))), vec4<i32>(select(-11108i, u_input.b.x, true), u_input.b.x, var_0.a.x, 1i) << (vec4<u32>(countOneBits(arg_0.x), reverseBits(44732u), arg_0.x, ~18237u) % vec4<u32>(32u)));
}

fn func_1() -> u32 {
    var var_0 = -(~u_input.b.x ^ 0i) ^ -firstTrailingBit(u_input.b.x);
    var_0 = 42127i;
    var var_1 = _wgslsmith_mult_vec4_i32(func_5(select(~u_input.d.yx, ~vec2<u32>(4294967295u, u_input.a), func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]), 1f)) ^ (~vec4<i32>(35920i, -2147483647i, u_input.b.x, 37683i) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 6954i), vec4<i32>(u_input.b.x, 1i, u_input.b.x, 290i))), ~(~vec4<i32>(-u_input.b.x, ~(-7380i), reverseBits(u_input.b.x), u_input.b.x)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 8458u), vec2<u32>(u_input.a, 35249u)) % 32u)) >> ((46974u ^ _wgslsmith_mod_u32(~u_input.d.x, 0u)) % 32u), u_input.d.x), 30u)];
    var var_3 = any(!(!select(!vec2<bool>(false, var_2.a), !vec2<bool>(false, var_2.a), 0u <= u_input.c.x)));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(func_1(), ~4294967295u), abs(~1u), ~max(u_input.c.x, reverseBits(~4294967295u))), 5u)];
    global1 = array<Struct_3, 23>();
    var var_1 = Struct_2(all(vec3<bool>(_wgslsmith_f_op_f32(min(-1471f, global0[_wgslsmith_index_u32(0u, 30u)])) < global0[_wgslsmith_index_u32(53312u, 30u)], any(vec3<bool>(true, false, false)), func_2())), global2[_wgslsmith_index_u32(u_input.d.x, 30u)]);
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 30u)];
    global2 = array<Struct_1, 30>();
    let var_3 = Struct_2(var_2.a && any(select(vec3<bool>(var_2.a, false, var_1.a), vec3<bool>(false, var_1.a, true), true)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(845f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)])), -222f);
}

