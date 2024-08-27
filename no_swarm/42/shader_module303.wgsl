struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(i32(-2147483648), vec2<u32>(0u, 100758u), vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-872f, -532f), false), Struct_2(29275i, vec2<u32>(121656u, 4294967295u), vec2<i32>(1i, 0i), vec2<f32>(-161f, 2054f), true), Struct_2(12679i, vec2<u32>(4294967295u, 52419u), vec2<i32>(0i, 20507i), vec2<f32>(1694f, -1037f), false), Struct_2(3248i, vec2<u32>(0u, 8591u), vec2<i32>(0i, -1i), vec2<f32>(1000f, 1000f), false), Struct_2(i32(-2147483648), vec2<u32>(0u, 312u), vec2<i32>(4947i, -20969i), vec2<f32>(1299f, -578f), true), Struct_2(i32(-2147483648), vec2<u32>(57189u, 34988u), vec2<i32>(2147483647i, 16129i), vec2<f32>(1333f, -289f), false), Struct_2(-20624i, vec2<u32>(26111u, 4294967295u), vec2<i32>(-19304i, -1i), vec2<f32>(920f, -589f), false), Struct_2(i32(-2147483648), vec2<u32>(55209u, 4294967295u), vec2<i32>(-1i, -1i), vec2<f32>(-1321f, 694f), false), Struct_2(-1i, vec2<u32>(58467u, 23300u), vec2<i32>(18351i, 1i), vec2<f32>(785f, 2216f), false), Struct_2(30125i, vec2<u32>(51249u, 22011u), vec2<i32>(i32(-2147483648), -28776i), vec2<f32>(-102f, 1742f), true), Struct_2(-1i, vec2<u32>(39671u, 1u), vec2<i32>(0i, -1i), vec2<f32>(-263f, 179f), false), Struct_2(53575i, vec2<u32>(29940u, 49335u), vec2<i32>(i32(-2147483648), -709i), vec2<f32>(257f, -1187f), false), Struct_2(-40119i, vec2<u32>(12451u, 40093u), vec2<i32>(i32(-2147483648), 20217i), vec2<f32>(-460f, 1000f), false), Struct_2(i32(-2147483648), vec2<u32>(1u, 4294967295u), vec2<i32>(-13921i, -64987i), vec2<f32>(-591f, 906f), true), Struct_2(i32(-2147483648), vec2<u32>(1800u, 115075u), vec2<i32>(-14965i, -46475i), vec2<f32>(411f, 355f), true), Struct_2(i32(-2147483648), vec2<u32>(33246u, 4294967295u), vec2<i32>(2147483647i, 2147483647i), vec2<f32>(632f, 205f), true), Struct_2(12719i, vec2<u32>(1094u, 4294967295u), vec2<i32>(10016i, 350i), vec2<f32>(-1000f, 327f), false), Struct_2(-8164i, vec2<u32>(4294967295u, 76766u), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(939f, -1481f), false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.b)), arg_0.x);
    var var_1 = select(vec3<bool>(all(select(vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.a, vec2<bool>(true, false))), false, ~(u_input.c << (22471u % 32u)) < arg_1.c.x), select(!vec3<bool>(all(vec3<bool>(arg_1.a.x, false, arg_1.a.x)), false, !arg_1.a.x), !select(select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, false)), vec3<bool>(false, true, arg_1.a.x), vec3<bool>(arg_1.a.x, true, arg_1.a.x)), !vec3<bool>(true, all(vec4<bool>(false, true, arg_1.a.x, arg_1.a.x)), true)), vec3<bool>(false, any(select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.a.x, arg_1.a.x, false), arg_1.a.x), true)), arg_1.a.x));
    let var_2 = ~max(u_input.c, _wgslsmith_mod_u32(countOneBits(reverseBits(u_input.c)), 1982u));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 366f) * arg_0.x))), -1000f);
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(~87406u, abs(u_input.c));
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, arg_1)))))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-arg_2), abs(reverseBits(vec3<u32>(var_0, 27166u, var_0))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0, u_input.c), vec2<u32>(0u, 33403u))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1265f, arg_1)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(arg_2, -832f))), vec2<f32>(arg_1, -778f))));
    let var_3 = Struct_2(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, arg_0.x), firstLeadingBit(vec2<u32>(var_0, ~(5380u | u_input.c))), vec2<i32>(i32(-1i) * -2147483647i, abs(abs(-11217i) | _wgslsmith_div_i32(u_input.d.x, 28254i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(false, true, true))) & true);
    global0 = array<vec3<u32>, 7>();
    return Struct_1(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, var_3.e), var_3.e), select(vec2<bool>(var_3.e, var_3.e), vec2<bool>(var_3.e, var_3.e), vec2<bool>(false, false)), all(select(vec4<bool>(var_3.e, true, var_3.e, true), vec4<bool>(false, false, var_3.e, false), vec4<bool>(true, var_3.e, false, var_3.e)))), select(vec2<bool>(var_3.e || true, any(vec2<bool>(true, var_3.e))), select(vec2<bool>(var_3.e, var_3.e), select(vec2<bool>(true, var_3.e), vec2<bool>(var_3.e, var_3.e), vec2<bool>(false, var_3.e)), true), all(vec4<bool>(var_3.e, var_3.e, true, false))), true), 899f, vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.b, var_3.b), var_3.b.x, _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(16027u, var_3.b.x, var_3.b.x, 31339u), vec4<u32>(1u, var_3.b.x, 1u, 10968u)), var_0)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_3.b.x, 3015u), ~var_3.b), var_3.b) >> (min(~vec2<u32>(u_input.c, 60282u) & var_3.b, ~vec2<u32>(var_3.b.x, 53761u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3);
    var var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(-(~(-u_input.d.xzx))), u_input.a.yxx, ~vec3<i32>(~u_input.d.x, -10554i, i32(-1i) * -1i) << (~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~u_input.c, u_input.c), 7u)] % vec3<u32>(32u)));
    var var_2 = Struct_3(min(u_input.d ^ (vec4<i32>(var_1.x, -25199i, u_input.a.x, var_1.x) | (vec4<i32>(u_input.d.x, 1i, 2147483647i, u_input.d.x) << (vec4<u32>(u_input.c, 4294967295u, arg_0.c.x, 21381u) % vec4<u32>(32u)))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(1i, var_1.x, 15539i, u_input.d.x)), vec4<i32>(0i, 0i, -2147483647i, var_1.x))));
    global0 = array<vec3<u32>, 7>();
    let var_3 = vec3<bool>(select(false, all(vec4<bool>(any(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x)), true, true, any(vec2<bool>(true, true)))), false), true, !arg_0.a.x);
    return Struct_4(select(var_1.x, ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d.wxy, vec3<i32>(5054i, var_2.a.x, 0i), u_input.b), max(vec3<i32>(-1i, -2147483647i, var_1.x), vec3<i32>(var_2.a.x, u_input.d.x, 0i))), arg_1.x), Struct_3(vec4<i32>(var_1.x, ~(-1745i ^ u_input.d.x), -2137i, countOneBits(-2688i))));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global1 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, ~u_input.c), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(21833u, u_input.c)), vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) ^ ~(~vec2<u32>(u_input.c, u_input.c))) ^ ~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 33700u), select(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c), true)));
    global1 = array<Struct_2, 18>();
    var var_1 = func_4(func_2(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.b.x, -u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x)))), 1338f, _wgslsmith_f_op_f32(f32(-1f) * -501f)), select(!select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, true, false), vec3<bool>(arg_0.x, true, arg_0.x)), vec3<bool>(false, -3767i < (u_input.d.x | u_input.d.x), func_2(select(vec4<i32>(1i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, 1i), vec4<bool>(arg_0.x, arg_0.x, false, false)), _wgslsmith_f_op_f32(max(1623f, -2887f)), _wgslsmith_f_op_f32(max(-1578f, 494f))).a.x), any(!(!vec4<bool>(false, true, true, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-497f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - 1f)), -471f);
    var var_2 = _wgslsmith_f_op_f32(floor(-554f));
    return !(true && arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 7>();
    let var_0 = u_input.c;
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = select(true, !func_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), false);
    var_1 = u_input.d.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2075f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-521f, -540f))))));
    global0 = array<vec3<u32>, 7>();
    let var_5 = ~vec2<u32>(85509u, ~(~u_input.c)) << (vec2<u32>(1450u, u_input.c) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(u_input.c, ~(~var_0)));
}

