struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(9346i, 45531i), vec2<i32>(50322i, -16404i), vec2<i32>(-8366i, 63513i), vec2<i32>(-38835i, 30786i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 0i), vec2<i32>(27218i, i32(-2147483648)), vec2<i32>(-1i, -111458i), vec2<i32>(1i, -1i), vec2<i32>(-36870i, -47307i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(-25327i, 14298i));

var<private> global1: vec3<i32> = vec3<i32>(-17053i, -1074i, 2147483647i);

var<private> global2: vec3<i32> = vec3<i32>(1i, -1i, -39768i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(-1627f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * -430f) - arg_0.a.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(1000f))))));
    global2 = ~countOneBits(-arg_1.a.a.zyy);
    var var_1 = arg_0.a.yz;
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(arg_0.a));
    return -49021i;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, global1.x, 2147483647i ^ global2.x), -(vec3<i32>(global1.x, global1.x, -2147483647i) << (vec3<u32>(u_input.b, u_input.b, u_input.a) % vec3<u32>(32u)))), (vec3<i32>(global2.x, func_3(Struct_3(vec3<f32>(837f, -1323f, 361f)), Struct_2(Struct_1(vec4<i32>(-20035i, global2.x, global2.x, 1i), 271f, global2.x)), Struct_1(vec4<i32>(global2.x, global2.x, 24785i, -1i), -266f, 2147483647i)), global1.x) >> (reverseBits(vec3<u32>(u_input.a, 58071u, u_input.c) ^ vec3<u32>(u_input.c, u_input.b, 4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, _wgslsmith_clamp_u32(23490u, 1u, u_input.c)), 4294967295u) % vec3<u32>(32u)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f * -290f) + _wgslsmith_div_f32(146f, 768f)), -433f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(344f, 1000f, -1024f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-756f, 1000f, -1000f) - vec3<f32>(234f, 1383f, -1216f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1290f, -2527f, -350f) + vec3<f32>(1116f, -1153f, -801f)))))));
    var var_1 = global2.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(26828i, _wgslsmith_mod_i32(-1i, 20733i), _wgslsmith_div_i32(2559i, global2.x), _wgslsmith_mult_i32(global1.x, global2.x)), firstTrailingBit(vec4<i32>(-32192i, global1.x, -97382i, -17093i) << (vec4<u32>(u_input.b, u_input.b, 12863u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1364f, var_0.a.x)) + _wgslsmith_f_op_f32(abs(var_0.a.x)))), 15409i));
    let var_3 = Struct_2(var_2.a);
    return var_2.a;
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = 51518u;
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f - var_0.b))))), _wgslsmith_mult_i32(global2.x, var_0.a.x));
    var var_3 = true;
    let var_4 = func_2();
    return 32492i;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    global1 = vec3<i32>(-2570i, global2.x, func_2().a.x);
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, arg_2.b, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -1000f, arg_2.b) - arg_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.b, -2071f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, 1718f) + arg_0.a))) + vec3<f32>(arg_2.b, arg_2.b, _wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_1 = ~6141u;
    let var_2 = var_0;
    var var_3 = var_2.a.xz;
    return !select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(u_input.a >= arg_3.x, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), -1i < arg_1)), arg_1 <= _wgslsmith_div_i32(-arg_1, _wgslsmith_div_i32(arg_1, global1.x)));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    global0 = array<vec2<i32>, 13>();
    global0 = array<vec2<i32>, 13>();
    global1 = vec3<i32>(-7708i, global1.x, _wgslsmith_add_i32(global2.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 2147483647i, global2.x), vec3<i32>(45520i, -1i, global2.x)))) ^ (vec3<i32>(_wgslsmith_sub_i32(2147483647i, i32(-1i) * -2147483647i), min(global1.x, _wgslsmith_div_i32(2147483647i, global2.x)), global2.x) | vec3<i32>(-global2.x, global2.x, -1i));
    global1 = _wgslsmith_div_vec3_i32(reverseBits(-vec3<i32>(-global1.x, global1.x, -global2.x)), vec3<i32>(firstTrailingBit(1i >> (arg_1.x % 32u)), global1.x, -2147483647i));
    let var_0 = select(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(45436i, -61341i, _wgslsmith_sub_i32(global2.x, global1.x)), func_1()), select(~(vec2<i32>(global2.x, global2.x) << (arg_1.zx % vec2<u32>(32u))), global0[_wgslsmith_index_u32(abs(0u << (1u % 32u)), 13u)], vec2<bool>(true, arg_2))), max(_wgslsmith_div_vec2_i32(vec2<i32>(40294i, 2147483647i), vec2<i32>(firstTrailingBit(-60841i), func_1())), vec2<i32>(global1.x, _wgslsmith_clamp_i32(global2.x, global2.x, -34662i)) << (~vec2<u32>(u_input.b, arg_1.x) % vec2<u32>(32u))), !vec2<bool>(arg_2, !(!arg_2)));
    return Struct_2(Struct_1(min(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.x, global2.x, global1.x, var_0.x)), -vec4<i32>(0i, global2.x, var_0.x, global2.x)), -(vec4<i32>(-1i, 2147483647i, 10751i, -25963i) & vec4<i32>(global2.x, var_0.x, -35458i, global2.x))), _wgslsmith_f_op_f32(-473f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(3037f, -1260f)))), 18279i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 13>();
    var var_0 = true;
    var var_1 = 1336f;
    let var_2 = _wgslsmith_div_u32(1u, firstLeadingBit(((u_input.c << (u_input.a % 32u)) | u_input.a) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(40328u, 72577u), vec2<u32>(u_input.c, 60630u)) % 32u)));
    var var_3 = func_5(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(u_input.c) << (~15166u % 32u), max(4294967295u, var_2) & firstLeadingBit(u_input.c), abs(~var_2)), vec3<u32>(var_2, 51392u, var_2) ^ ~firstTrailingBit(vec3<u32>(0u, u_input.b, 4294967295u))), all(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, -441f, -533f))), -func_1(), func_2(), max(~vec3<u32>(var_2, 22636u, 1u), reverseBits(vec3<u32>(u_input.a, u_input.b, var_2))))));
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec3<u32>(var_2, u_input.c, 14738u) << (vec3<u32>(20939u, u_input.a, 9797u) % vec3<u32>(32u))))));
}

